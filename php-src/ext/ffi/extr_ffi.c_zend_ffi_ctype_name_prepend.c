
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ start; scalar_t__ buf; } ;
typedef TYPE_1__ zend_ffi_ctype_name_buf ;


 int memcpy (scalar_t__,char const*,size_t) ;

__attribute__((used)) static int zend_ffi_ctype_name_prepend(zend_ffi_ctype_name_buf *buf, const char *str, size_t len)
{
 buf->start -= len;
 if (buf->start < buf->buf) {
  return 0;
 }
 memcpy(buf->start, str, len);
 return 1;
}
