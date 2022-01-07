
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dlist_is_empty (int *) ;
 int pcxt_list ;

bool
ParallelContextActive(void)
{
 return !dlist_is_empty(&pcxt_list);
}
