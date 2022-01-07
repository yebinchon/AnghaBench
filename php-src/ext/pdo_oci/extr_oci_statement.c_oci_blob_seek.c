
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zend_off_t ;
typedef scalar_t__ ub4 ;
struct oci_lob_self {scalar_t__ offset; } ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;


 scalar_t__ PDO_OCI_LOBMAXSIZE ;

__attribute__((used)) static int oci_blob_seek(php_stream *stream, zend_off_t offset, int whence, zend_off_t *newoffset)
{
 struct oci_lob_self *self = (struct oci_lob_self*)stream->abstract;

 if (offset >= PDO_OCI_LOBMAXSIZE) {
  return -1;
 } else {
  self->offset = (ub4) offset + 1;
  return 0;
 }
}
