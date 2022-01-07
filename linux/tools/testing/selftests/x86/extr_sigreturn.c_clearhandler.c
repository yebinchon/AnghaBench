
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; } ;
typedef int sa ;


 int SIG_DFL ;
 int err (int,char*) ;
 int memset (struct sigaction*,int ,int) ;
 scalar_t__ sigaction (int,struct sigaction*,int ) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void clearhandler(int sig)
{
 struct sigaction sa;
 memset(&sa, 0, sizeof(sa));
 sa.sa_handler = SIG_DFL;
 sigemptyset(&sa.sa_mask);
 if (sigaction(sig, &sa, 0))
  err(1, "sigaction");
}
