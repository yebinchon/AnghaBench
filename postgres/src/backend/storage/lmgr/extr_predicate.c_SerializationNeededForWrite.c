
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 scalar_t__ InvalidSerializableXact ;
 scalar_t__ MySerializableXact ;
 int PredicateLockingNeededForRelation (int ) ;

__attribute__((used)) static inline bool
SerializationNeededForWrite(Relation relation)
{

 if (MySerializableXact == InvalidSerializableXact)
  return 0;


 if (!PredicateLockingNeededForRelation(relation))
  return 0;

 return 1;
}
