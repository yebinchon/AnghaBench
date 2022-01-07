
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;
typedef int Relation ;


 scalar_t__ InvalidSerializableXact ;
 int IsMVCCSnapshot (int ) ;
 scalar_t__ MySerializableXact ;
 int PredicateLockingNeededForRelation (int ) ;
 int ReleasePredicateLocks (int,int) ;
 scalar_t__ SxactIsROSafe (scalar_t__) ;

__attribute__((used)) static inline bool
SerializationNeededForRead(Relation relation, Snapshot snapshot)
{

 if (MySerializableXact == InvalidSerializableXact)
  return 0;
 if (!IsMVCCSnapshot(snapshot))
  return 0;
 if (SxactIsROSafe(MySerializableXact))
 {
  ReleasePredicateLocks(0, 1);
  return 0;
 }


 if (!PredicateLockingNeededForRelation(relation))
  return 0;

 return 1;
}
