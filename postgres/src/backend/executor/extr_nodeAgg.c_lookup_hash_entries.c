
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int additional; } ;
struct TYPE_6__ {int num_hashes; int * hash_pergroup; } ;
typedef int AggStatePerGroup ;
typedef TYPE_1__ AggState ;


 TYPE_3__* lookup_hash_entry (TYPE_1__*) ;
 int select_current_set (TYPE_1__*,int,int) ;

__attribute__((used)) static void
lookup_hash_entries(AggState *aggstate)
{
 int numHashes = aggstate->num_hashes;
 AggStatePerGroup *pergroup = aggstate->hash_pergroup;
 int setno;

 for (setno = 0; setno < numHashes; setno++)
 {
  select_current_set(aggstate, setno, 1);
  pergroup[setno] = lookup_hash_entry(aggstate)->additional;
 }
}
