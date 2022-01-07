
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pct_info {scalar_t__ first_row; scalar_t__ second_row; } ;



__attribute__((used)) static int
pct_info_cmp(const void *pa, const void *pb)
{
 const struct pct_info *a = (const struct pct_info *) pa;
 const struct pct_info *b = (const struct pct_info *) pb;

 if (a->first_row != b->first_row)
  return (a->first_row < b->first_row) ? -1 : 1;
 if (a->second_row != b->second_row)
  return (a->second_row < b->second_row) ? -1 : 1;
 return 0;
}
