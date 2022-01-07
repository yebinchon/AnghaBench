
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int semNum; int semId; } ;
typedef TYPE_1__* PGSemaphore ;


 int IpcSemaphoreInitialize (int ,int ,int ) ;

void
PGSemaphoreReset(PGSemaphore sema)
{
 IpcSemaphoreInitialize(sema->semId, sema->semNum, 0);
}
