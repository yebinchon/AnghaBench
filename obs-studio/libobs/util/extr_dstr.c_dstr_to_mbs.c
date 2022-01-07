
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int len; int array; } ;


 int os_mbs_to_utf8_ptr (int ,int ,char**) ;

char *dstr_to_mbs(const struct dstr *str)
{
 char *dst;
 os_mbs_to_utf8_ptr(str->array, str->len, &dst);
 return dst;
}
