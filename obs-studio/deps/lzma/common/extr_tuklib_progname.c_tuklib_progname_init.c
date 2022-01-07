
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* progname ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

extern void
tuklib_progname_init(char **argv)
{
 progname = argv[0];
 return;
}
