
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilegx_spr {int number; } ;



__attribute__((used)) static int
tilegx_spr_compare (const void *a_ptr, const void *b_ptr)
{
  const struct tilegx_spr *a = (const struct tilegx_spr *) a_ptr;
  const struct tilegx_spr *b = (const struct tilegx_spr *) b_ptr;
  return (a->number - b->number);
}
