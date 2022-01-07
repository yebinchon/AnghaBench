
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hProcess; } ;
struct TYPE_5__ {int isRunning; int data; int pid; int hWritePipeOut; int hReadPipeIn; TYPE_1__ processInfo; int ghWriteEvent; int hWritePipeIn; int hReadPipeOut; } ;
typedef TYPE_2__ libbochs_t ;


 int CloseHandle (int ) ;
 int R_FREE (int ) ;
 int SIGKILL ;
 int TerminateProcess (int ,int ) ;
 int close (int ) ;
 int free (int ) ;
 int kill (int ,int ) ;
 int lpTmpBuffer ;

void bochs_close(libbochs_t* b) {
 b->isRunning = 0;
 close (b->hReadPipeIn);
 close (b->hWritePipeOut);
 kill (b->pid, SIGKILL);
 R_FREE (b->data);
 R_FREE (lpTmpBuffer);

}
