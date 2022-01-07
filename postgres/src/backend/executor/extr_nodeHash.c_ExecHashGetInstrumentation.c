
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int space_peak; int nbatch_original; int nbatch; int nbuckets_original; int nbuckets; } ;
struct TYPE_5__ {int spacePeak; int nbatch_original; int nbatch; int nbuckets_original; int nbuckets; } ;
typedef TYPE_1__* HashJoinTable ;
typedef TYPE_2__ HashInstrumentation ;



void
ExecHashGetInstrumentation(HashInstrumentation *instrument,
         HashJoinTable hashtable)
{
 instrument->nbuckets = hashtable->nbuckets;
 instrument->nbuckets_original = hashtable->nbuckets_original;
 instrument->nbatch = hashtable->nbatch;
 instrument->nbatch_original = hashtable->nbatch_original;
 instrument->space_peak = hashtable->spacePeak;
}
