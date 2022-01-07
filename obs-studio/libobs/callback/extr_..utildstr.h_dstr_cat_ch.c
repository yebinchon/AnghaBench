
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int len; char* array; } ;


 int dstr_ensure_capacity (struct dstr*,int) ;

__attribute__((used)) static inline void dstr_cat_ch(struct dstr *dst, char ch)
{
 dstr_ensure_capacity(dst, ++dst->len + 1);
 dst->array[dst->len - 1] = ch;
 dst->array[dst->len] = 0;
}
