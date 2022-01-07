
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int convertPath (char*) ;
 scalar_t__ errno ;
 int printf (char*,char*,...) ;
 int rmdir (char*) ;

int
main (int argc, char* argv[])
{
  int justPrint = 0;
  int idx;
  int returnCode;

  for (idx = 1; idx < argc; idx++)
  {
    convertPath (argv [idx]);

    if (justPrint)
    {
      printf ("remove %s\n", argv [idx]);
    }
    else
    {
      returnCode = rmdir (argv [idx]);
      if (returnCode != 0 && errno != ENOENT)
      {







      }
    }
  }

  return 0;
}
