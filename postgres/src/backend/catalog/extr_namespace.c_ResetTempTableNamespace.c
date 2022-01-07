
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OidIsValid (int ) ;
 int RemoveTempRelations (int ) ;
 int myTempNamespace ;

void
ResetTempTableNamespace(void)
{
 if (OidIsValid(myTempNamespace))
  RemoveTempRelations(myTempNamespace);
}
