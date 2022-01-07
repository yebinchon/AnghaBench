
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int dummy; } ;


 int dstr_free (struct dstr*) ;
 int dstr_init_move (struct dstr*,struct dstr*) ;

__attribute__((used)) static inline void dstr_move(struct dstr *dst, struct dstr *src)
{
 dstr_free(dst);
 dstr_init_move(dst, src);
}
