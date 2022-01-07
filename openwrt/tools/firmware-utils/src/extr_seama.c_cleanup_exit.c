
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROGNAME ;
 int exit (int) ;
 int verbose (char*,int ,int) ;

__attribute__((used)) static void cleanup_exit(int exit_code)
{
 verbose("%s: exit with code %d\n", PROGNAME, exit_code);
 exit(exit_code);
}
