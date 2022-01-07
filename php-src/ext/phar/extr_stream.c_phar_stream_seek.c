
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ zend_off_t ;
struct TYPE_7__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
struct TYPE_8__ {scalar_t__ uncompressed_filesize; scalar_t__ link; } ;
typedef TYPE_2__ phar_entry_info ;
struct TYPE_9__ {scalar_t__ zero; scalar_t__ position; int fp; TYPE_2__* internal_file; } ;
typedef TYPE_3__ phar_entry_data ;





 TYPE_2__* phar_get_link_source (TYPE_2__*) ;
 int php_stream_seek (int ,scalar_t__,int const) ;
 scalar_t__ php_stream_tell (int ) ;

__attribute__((used)) static int phar_stream_seek(php_stream *stream, zend_off_t offset, int whence, zend_off_t *newoffset)
{
 phar_entry_data *data = (phar_entry_data *)stream->abstract;
 phar_entry_info *entry;
 int res;
 zend_off_t temp;

 if (data->internal_file->link) {
  entry = phar_get_link_source(data->internal_file);
 } else {
  entry = data->internal_file;
 }

 switch (whence) {
  case 129 :
   temp = data->zero + entry->uncompressed_filesize + offset;
   break;
  case 130 :
   temp = data->zero + data->position + offset;
   break;
  case 128 :
   temp = data->zero + offset;
   break;
  default:
   temp = 0;
 }
 if (temp > data->zero + (zend_off_t) entry->uncompressed_filesize) {
  *newoffset = -1;
  return -1;
 }
 if (temp < data->zero) {
  *newoffset = -1;
  return -1;
 }
 res = php_stream_seek(data->fp, temp, 128);
 *newoffset = php_stream_tell(data->fp) - data->zero;
 data->position = *newoffset;
 return res;
}
