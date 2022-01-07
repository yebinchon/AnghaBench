
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_list {int txt; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_txt(const void *p1, const void *p2)
{
 const struct block_list *l1 = p1, *l2 = p2;

 return strcmp(l1->txt, l2->txt);
}
