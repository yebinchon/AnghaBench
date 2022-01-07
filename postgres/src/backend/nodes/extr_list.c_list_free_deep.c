
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int Assert (int ) ;
 int IsPointerList (int *) ;
 int list_free_private (int *,int) ;

void
list_free_deep(List *list)
{



 Assert(IsPointerList(list));
 list_free_private(list, 1);
}
