
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;


 int getBaseTypeAndTypmod (int ,int*) ;

Oid
getBaseType(Oid typid)
{
 int32 typmod = -1;

 return getBaseTypeAndTypmod(typid, &typmod);
}
