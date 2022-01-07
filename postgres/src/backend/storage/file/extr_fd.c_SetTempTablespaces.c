
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Assert (int) ;
 int nextTempTableSpace ;
 int numTempTableSpaces ;
 int random () ;
 int * tempTableSpaces ;

void
SetTempTablespaces(Oid *tableSpaces, int numSpaces)
{
 Assert(numSpaces >= 0);
 tempTableSpaces = tableSpaces;
 numTempTableSpaces = numSpaces;
 if (numSpaces > 1)
  nextTempTableSpace = random() % numSpaces;
 else
  nextTempTableSpace = 0;
}
