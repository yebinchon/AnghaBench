
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memsize; char* mem; scalar_t__ mempos; int memfree; } ;
typedef int LPVOID ;
typedef int HANDLE ;


 int FALSE ;
 int FILE_BEGIN ;
 int GetFileSize (int ,int *) ;
 int ReadFile (int ,int ,int,int*,int *) ;
 int SetFilePointer (int ,int ,int *,int ) ;
 int TRACE (char*,...) ;
 int TRUE ;
 TYPE_1__* bc ;
 scalar_t__ cmd_alloc (int) ;

void BatchFile2Mem(HANDLE hBatchFile)
{
    TRACE ("BatchFile2Mem ()\n");

    bc->memsize = GetFileSize(hBatchFile, ((void*)0));
    bc->mem = (char *)cmd_alloc(bc->memsize+1);


    if (bc->mem != ((void*)0))
    {
        TRACE ("BatchFile2Mem memory %08x - %08x\n",bc->mem,bc->memsize);
        SetFilePointer (hBatchFile, 0, ((void*)0), FILE_BEGIN);
        ReadFile(hBatchFile, (LPVOID)bc->mem, bc->memsize, &bc->memsize, ((void*)0));
        bc->mem[bc->memsize]='\0';
        bc->memfree=TRUE;
    }
    else
    {
        bc->memsize=0;
        bc->memfree=FALSE;
    }
    bc->mempos = 0;
}
