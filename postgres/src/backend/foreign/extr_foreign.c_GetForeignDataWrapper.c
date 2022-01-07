
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int ForeignDataWrapper ;


 int * GetForeignDataWrapperExtended (int ,int ) ;

ForeignDataWrapper *
GetForeignDataWrapper(Oid fdwid)
{
 return GetForeignDataWrapperExtended(fdwid, 0);
}
