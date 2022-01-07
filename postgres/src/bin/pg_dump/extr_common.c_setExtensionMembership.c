
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExtensionMemberId ;


 int ExtensionMemberIdCompare ;
 int * extmembers ;
 int numextmembers ;
 int qsort (void*,int,int,int ) ;

void
setExtensionMembership(ExtensionMemberId *extmems, int nextmems)
{

 if (nextmems > 1)
  qsort((void *) extmems, nextmems, sizeof(ExtensionMemberId),
     ExtensionMemberIdCompare);

 extmembers = extmems;
 numextmembers = nextmems;
}
