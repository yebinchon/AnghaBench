
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carc {int dummy; } ;


 int carc_cmp ;
 int qsort (struct carc*,size_t,int,int ) ;

__attribute__((used)) static void
carcsort(struct carc *first, size_t n)
{
 if (n > 1)
  qsort(first, n, sizeof(struct carc), carc_cmp);
}
