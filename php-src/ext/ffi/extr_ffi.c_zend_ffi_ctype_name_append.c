
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ end; scalar_t__ buf; } ;
typedef TYPE_1__ zend_ffi_ctype_name_buf ;


 scalar_t__ MAX_TYPE_NAME_LEN ;
 int memcpy (scalar_t__,char const*,size_t) ;

__attribute__((used)) static int zend_ffi_ctype_name_append(zend_ffi_ctype_name_buf *buf, const char *str, size_t len)
{
 if (buf->end + len > buf->buf + MAX_TYPE_NAME_LEN) {
  return 0;
 }
 memcpy(buf->end, str, len);
 buf->end += len;
 return 1;
}
