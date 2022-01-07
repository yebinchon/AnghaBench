
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int LOCKTAG ;


 int InvalidOid ;
 scalar_t__ IsSharedRelation (int ) ;
 int MyDatabaseId ;
 int SET_LOCKTAG_RELATION (int ,int ,int ) ;

__attribute__((used)) static inline void
SetLocktagRelationOid(LOCKTAG *tag, Oid relid)
{
 Oid dbid;

 if (IsSharedRelation(relid))
  dbid = InvalidOid;
 else
  dbid = MyDatabaseId;

 SET_LOCKTAG_RELATION(*tag, dbid, relid);
}
