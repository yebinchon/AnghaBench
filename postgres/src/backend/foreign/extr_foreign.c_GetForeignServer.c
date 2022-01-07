
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ForeignServer ;


 int * GetForeignServerExtended (int ,int ) ;

ForeignServer *
GetForeignServer(Oid serverid)
{
 return GetForeignServerExtended(serverid, 0);
}
