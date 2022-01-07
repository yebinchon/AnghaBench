
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct dstr {int array; } const dstr ;


 int dstr_resize (struct dstr const*,size_t const) ;
 int memcpy (int ,int ,size_t const) ;

void dstr_left(struct dstr *dst, const struct dstr *str, const size_t pos)
{
 dstr_resize(dst, pos);
 if (dst != str)
  memcpy(dst->array, str->array, pos);
}
