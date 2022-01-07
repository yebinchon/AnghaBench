
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 scalar_t__ getit (int,char const**,int,char*) ;
 int printf (char*,char const*,char const*) ;
 int stdout ;

void newer(int argc, const char *argv[])
{
 if (getit(argc, argv, -1, "w")) {
  printf("Local file \"%s\" is newer than remote file \"%s\"\n",
   argv[1], argv[2]);
  (void) fflush(stdout);
 }
}
