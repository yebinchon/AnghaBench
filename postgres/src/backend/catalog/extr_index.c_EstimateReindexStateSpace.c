
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int Oid ;


 int SerializedReindexState ;
 int list_length (int ) ;
 scalar_t__ mul_size (int,int ) ;
 scalar_t__ offsetof (int ,int ) ;
 int pendingReindexedIndexes ;

Size
EstimateReindexStateSpace(void)
{
 return offsetof(SerializedReindexState, pendingReindexedIndexes)
  + mul_size(sizeof(Oid), list_length(pendingReindexedIndexes));
}
