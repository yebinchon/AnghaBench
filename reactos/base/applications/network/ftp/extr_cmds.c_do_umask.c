
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int command (char*,char const*) ;
 int verbose ;

void do_umask(int argc, const char *argv[])
{
 int oldverbose = verbose;

 verbose = 1;
 (void) command(argc == 1 ? "SITE UMASK" : "SITE UMASK %s", argv[1]);
 verbose = oldverbose;
}
