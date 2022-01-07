
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ commitTsActive; } ;


 int ActivateCommitTs () ;
 int DeactivateCommitTs () ;
 TYPE_1__* commitTsShared ;

void
CommitTsParameterChange(bool newvalue, bool oldvalue)
{
 if (newvalue)
 {
  if (!commitTsShared->commitTsActive)
   ActivateCommitTs();
 }
 else if (commitTsShared->commitTsActive)
  DeactivateCommitTs();
}
