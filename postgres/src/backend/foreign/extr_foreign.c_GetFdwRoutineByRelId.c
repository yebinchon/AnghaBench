
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FdwRoutine ;


 int * GetFdwRoutineByServerId (int ) ;
 int GetForeignServerIdByRelId (int ) ;

FdwRoutine *
GetFdwRoutineByRelId(Oid relid)
{
 Oid serverid;


 serverid = GetForeignServerIdByRelId(relid);


 return GetFdwRoutineByServerId(serverid);
}
