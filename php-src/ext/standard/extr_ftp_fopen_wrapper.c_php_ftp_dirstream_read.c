
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zend_string ;
typedef int ssize_t ;
struct TYPE_7__ {char* d_name; } ;
typedef TYPE_1__ php_stream_dirent ;
struct TYPE_8__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
struct TYPE_9__ {TYPE_2__* datastream; } ;
typedef TYPE_3__ php_ftp_dirstream_data ;


 size_t MIN (int,scalar_t__) ;
 scalar_t__ ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int memcpy (char*,int ,size_t) ;
 int * php_basename (char*,size_t,int *,int ) ;
 scalar_t__ php_stream_eof (TYPE_2__*) ;
 int php_stream_get_line (TYPE_2__*,char*,int,size_t*) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static ssize_t php_ftp_dirstream_read(php_stream *stream, char *buf, size_t count)
{
 php_stream_dirent *ent = (php_stream_dirent *)buf;
 php_stream *innerstream;
 size_t tmp_len;
 zend_string *basename;

 innerstream = ((php_ftp_dirstream_data *)stream->abstract)->datastream;

 if (count != sizeof(php_stream_dirent)) {
  return -1;
 }

 if (php_stream_eof(innerstream)) {
  return 0;
 }

 if (!php_stream_get_line(innerstream, ent->d_name, sizeof(ent->d_name), &tmp_len)) {
  return -1;
 }

 basename = php_basename(ent->d_name, tmp_len, ((void*)0), 0);

 tmp_len = MIN(sizeof(ent->d_name), ZSTR_LEN(basename) - 1);
 memcpy(ent->d_name, ZSTR_VAL(basename), tmp_len);
 ent->d_name[tmp_len - 1] = '\0';
 zend_string_release_ex(basename, 0);


 while (tmp_len > 0 &&
   (ent->d_name[tmp_len - 1] == '\n' || ent->d_name[tmp_len - 1] == '\r' ||
    ent->d_name[tmp_len - 1] == '\t' || ent->d_name[tmp_len - 1] == ' ')) {
  ent->d_name[--tmp_len] = '\0';
 }

 return sizeof(php_stream_dirent);
}
