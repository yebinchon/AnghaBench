
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void syntax (void)
{
  fprintf (stderr,
    "Syntax: spiffsimg -f <filename> [-d] [-o <locationfilename>] [-c size] [-S flashsize] [-U usedsize] [-l | -i | -r <scriptname> ]\n\n"
  );
  exit (1);
}
