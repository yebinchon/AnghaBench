
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hash_destroy (int *) ;
 int * last_used_seq ;
 int * seqhashtab ;

void
ResetSequenceCaches(void)
{
 if (seqhashtab)
 {
  hash_destroy(seqhashtab);
  seqhashtab = ((void*)0);
 }

 last_used_seq = ((void*)0);
}
