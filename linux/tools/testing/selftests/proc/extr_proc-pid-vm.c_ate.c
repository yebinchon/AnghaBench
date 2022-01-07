
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int kill (scalar_t__,int ) ;
 scalar_t__ pid ;

__attribute__((used)) static void ate(void)
{
 if (pid > 0) {
  kill(pid, SIGTERM);
 }
}
