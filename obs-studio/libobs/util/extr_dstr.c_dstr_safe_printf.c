
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int dummy; } ;


 int dstr_copy (struct dstr*,char const*) ;
 int dstr_replace (struct dstr*,char*,char const*) ;

void dstr_safe_printf(struct dstr *dst, const char *format, const char *val1,
        const char *val2, const char *val3, const char *val4)
{
 dstr_copy(dst, format);
 if (val1)
  dstr_replace(dst, "$1", val1);
 if (val2)
  dstr_replace(dst, "$2", val2);
 if (val3)
  dstr_replace(dst, "$3", val3);
 if (val4)
  dstr_replace(dst, "$4", val4);
}
