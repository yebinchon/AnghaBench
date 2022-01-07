
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ActivateCommitTs () ;
 int DeactivateCommitTs () ;
 int track_commit_timestamp ;

void
CompleteCommitTsInitialization(void)
{
 if (!track_commit_timestamp)
  DeactivateCommitTs();
 else
  ActivateCommitTs();
}
