
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PANIC ;
 int elog (int ,char*,char const*,char const*,int) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*,int) ;
 int stderr ;

__attribute__((used)) static void
s_lock_stuck(const char *file, int line, const char *func)
{
 if (!func)
  func = "(unknown)";






 elog(PANIC, "stuck spinlock detected at %s, %s:%d",
   func, file, line);

}
