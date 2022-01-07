
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int startupBufferPinWaitBufId; } ;
typedef TYPE_1__ PROC_HDR ;


 TYPE_1__* ProcGlobal ;

void
SetStartupBufferPinWaitBufId(int bufid)
{

 volatile PROC_HDR *procglobal = ProcGlobal;

 procglobal->startupBufferPinWaitBufId = bufid;
}
