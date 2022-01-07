
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {int dummy; } ;
struct dstr {int dummy; } ;


 int dstr_copy_strref (struct dstr*,struct strref const*) ;
 int dstr_init (struct dstr*) ;

void dstr_init_copy_strref(struct dstr *dst, const struct strref *src)
{
 dstr_init(dst);
 dstr_copy_strref(dst, src);
}
