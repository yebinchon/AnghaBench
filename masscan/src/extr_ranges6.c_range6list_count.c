
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct Range6List {unsigned int count; TYPE_1__* list; } ;
struct TYPE_2__ {int begin; int end; } ;


 scalar_t__ DIFF (int ,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

uint64_t
range6list_count(const struct Range6List *targets)
{
    unsigned i;
    uint64_t result = 0;

    for (i=0; i<targets->count; i++) {
        uint64_t result_old = result;

        result += DIFF(targets->list[i].end, targets->list[i].begin) + 1ULL;
        if (result < result_old) {

            fprintf(stderr, "targe range bigger than 64-bits\n");
            return ~0ULL;
        }
    }

    return result;
}
