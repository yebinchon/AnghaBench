
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int filename ;
 scalar_t__ needs_unlink ;
 int puts (char*) ;
 int unlink (int ) ;

__attribute__((used)) static void
signal_cleanup(int signum)
{

 if (needs_unlink)
  unlink(filename);

 puts("");
 exit(signum);
}
