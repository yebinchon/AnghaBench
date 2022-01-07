
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int dummy; } ;


 int dstr_copy (struct dstr*,char const*) ;
 int dstr_init (struct dstr*) ;

__attribute__((used)) static inline void dstr_init_copy(struct dstr *dst, const char *str)
{
 dstr_init(dst);
 dstr_copy(dst, str);
}
