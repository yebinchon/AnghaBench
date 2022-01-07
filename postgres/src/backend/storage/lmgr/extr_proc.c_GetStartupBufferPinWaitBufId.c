
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int startupBufferPinWaitBufId; } ;
typedef TYPE_1__ PROC_HDR ;


 TYPE_1__* ProcGlobal ;

int
GetStartupBufferPinWaitBufId(void)
{

 volatile PROC_HDR *procglobal = ProcGlobal;

 return procglobal->startupBufferPinWaitBufId;
}
