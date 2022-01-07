
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Range6List {scalar_t__ picker; scalar_t__ list; } ;


 int free (scalar_t__) ;
 int memset (struct Range6List*,int ,int) ;

void
range6list_remove_all(struct Range6List *targets)
{
    if (targets->list)
        free(targets->list);
    if (targets->picker)
        free(targets->picker);
    memset(targets, 0, sizeof(*targets));
}
