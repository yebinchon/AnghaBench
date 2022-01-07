
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short fdstate; int * fileName; } ;
typedef size_t Index ;


 int Assert (int ) ;
 unsigned short FD_CLOSE_AT_EOXACT ;
 unsigned short FD_DELETE_AT_CLOSE ;
 int FileClose (size_t) ;
 int FileIsNotOpen (int ) ;
 int FreeDesc (int *) ;
 size_t SizeVfdCache ;
 TYPE_1__* VfdCache ;
 int WARNING ;
 int * allocatedDescs ;
 int elog (int ,char*,int *) ;
 int have_xact_temporary_files ;
 int * numAllocatedDescs ;

__attribute__((used)) static void
CleanupTempFiles(bool isCommit, bool isProcExit)
{
 Index i;





 if (isProcExit || have_xact_temporary_files)
 {
  Assert(FileIsNotOpen(0));
  for (i = 1; i < SizeVfdCache; i++)
  {
   unsigned short fdstate = VfdCache[i].fdstate;

   if (((fdstate & FD_DELETE_AT_CLOSE) || (fdstate & FD_CLOSE_AT_EOXACT)) &&
    VfdCache[i].fileName != ((void*)0))
   {







    if (isProcExit)
     FileClose(i);
    else if (fdstate & FD_CLOSE_AT_EOXACT)
    {
     elog(WARNING,
       "temporary file %s not closed at end-of-transaction",
       VfdCache[i].fileName);
     FileClose(i);
    }
   }
  }

  have_xact_temporary_files = 0;
 }


 if (isCommit && numAllocatedDescs > 0)
  elog(WARNING, "%d temporary files and directories not closed at end-of-transaction",
    numAllocatedDescs);


 while (numAllocatedDescs > 0)
  FreeDesc(&allocatedDescs[0]);
}
