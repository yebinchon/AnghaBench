
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int InvalidOid ;
 scalar_t__ IsSharedRelation (int ) ;
 int MyDatabaseId ;

__attribute__((used)) static Oid
classIdGetDbId(Oid classId)
{
 Oid dbId;

 if (IsSharedRelation(classId))
  dbId = InvalidOid;
 else
  dbId = MyDatabaseId;

 return dbId;
}
