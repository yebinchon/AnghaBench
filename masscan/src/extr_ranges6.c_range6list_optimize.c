
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct Range6List {int count; int * picker; TYPE_1__* list; } ;
struct TYPE_2__ {int begin; int end; } ;


 scalar_t__ DIFF (int ,int ) ;
 int SIZE_MAX ;
 int exit (int) ;
 int free (int *) ;
 int * malloc (int) ;

void
range6list_optimize(struct Range6List *targets)
{
    uint64_t *picker;
    size_t i;
    uint64_t total = 0;

    if (targets->picker)
        free(targets->picker);

    if (((size_t)targets->count) >= (size_t)(SIZE_MAX/sizeof(*picker)))
        exit(1);
    picker = malloc(targets->count * sizeof(*picker));
    if (picker == ((void*)0))
        exit(1);

    for (i=0; i<targets->count; i++) {
        picker[i] = total;
        total += DIFF(targets->list[i].end, targets->list[i].begin) + 1;
    }

    targets->picker = picker;
}
