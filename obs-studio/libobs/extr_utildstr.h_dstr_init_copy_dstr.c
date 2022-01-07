
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int dummy; } ;


 int dstr_copy_dstr (struct dstr*,struct dstr const*) ;
 int dstr_init (struct dstr*) ;

__attribute__((used)) static inline void dstr_init_copy_dstr(struct dstr *dst, const struct dstr *src)
{
 dstr_init(dst);
 dstr_copy_dstr(dst, src);
}
