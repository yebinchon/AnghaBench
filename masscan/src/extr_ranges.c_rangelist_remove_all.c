
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {int picker; int list; } ;


 int free (int ) ;
 int memset (struct RangeList*,int ,int) ;

void
rangelist_remove_all(struct RangeList *targets)
{
    free(targets->list);
    free(targets->picker);
    memset(targets, 0, sizeof(*targets));
}
