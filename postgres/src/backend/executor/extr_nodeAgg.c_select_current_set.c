
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_set; int * aggcontexts; int curaggcontext; int hashcontext; } ;
typedef TYPE_1__ AggState ;



__attribute__((used)) static void
select_current_set(AggState *aggstate, int setno, bool is_hash)
{

 if (is_hash)
  aggstate->curaggcontext = aggstate->hashcontext;
 else
  aggstate->curaggcontext = aggstate->aggcontexts[setno];

 aggstate->current_set = setno;
}
