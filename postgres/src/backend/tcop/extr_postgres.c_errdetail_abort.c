
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ recoveryConflictPending; } ;


 TYPE_1__* MyProc ;
 int errdetail (char*) ;

__attribute__((used)) static int
errdetail_abort(void)
{
 if (MyProc->recoveryConflictPending)
  errdetail("abort reason: recovery conflict");

 return 0;
}
