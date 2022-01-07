
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Assert (int ) ;
 int TempTablespacesAreSet () ;
 int numTempTableSpaces ;
 int * tempTableSpaces ;

int
GetTempTablespaces(Oid *tableSpaces, int numSpaces)
{
 int i;

 Assert(TempTablespacesAreSet());
 for (i = 0; i < numTempTableSpaces && i < numSpaces; ++i)
  tableSpaces[i] = tempTableSpaces[i];

 return i;
}
