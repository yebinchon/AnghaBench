
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 scalar_t__ bgchild ;
 int kill (scalar_t__,int ) ;

__attribute__((used)) static void
kill_bgchild_atexit(void)
{
 if (bgchild > 0)
  kill(bgchild, SIGTERM);
}
