
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SharedTuplestoreParticipant ;


 int SharedTuplestore ;
 size_t offsetof (int ,int) ;

size_t
sts_estimate(int participants)
{
 return offsetof(SharedTuplestore, participants) +
  sizeof(SharedTuplestoreParticipant) * participants;
}
