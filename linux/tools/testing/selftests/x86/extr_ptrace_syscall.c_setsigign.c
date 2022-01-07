
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_mask; void* sa_sigaction; } ;
typedef int sa ;


 scalar_t__ SIG_IGN ;
 int err (int,char*) ;
 int memset (struct sigaction*,int ,int) ;
 scalar_t__ sigaction (int,struct sigaction*,int ) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void setsigign(int sig, int flags)
{
 struct sigaction sa;
 memset(&sa, 0, sizeof(sa));
 sa.sa_sigaction = (void *)SIG_IGN;
 sa.sa_flags = flags;
 sigemptyset(&sa.sa_mask);
 if (sigaction(sig, &sa, 0))
  err(1, "sigaction");
}
