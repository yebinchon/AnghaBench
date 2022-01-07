
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int len; int array; } ;
struct dstr {int dummy; } ;


 int dstr_ncat (struct dstr*,int ,int ) ;

void dstr_cat_strref(struct dstr *dst, const struct strref *str)
{
 dstr_ncat(dst, str->array, str->len);
}
