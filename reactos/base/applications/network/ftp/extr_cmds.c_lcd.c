
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MAXPATHLEN ;
 scalar_t__ chdir (char const*) ;
 int code ;
 int fflush (int ) ;
 char* getcwd (char*,int) ;
 int globulize (char const**) ;
 char* home ;
 int perror (char const*) ;
 int printf (char*,char const*) ;
 int stdout ;

void lcd(int argc, const char *argv[])
{
 char buf[MAXPATHLEN];

 if (argc < 2)
  argc++, argv[1] = home;
 if (argc != 2) {
  printf("usage:%s local-directory\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 if (!globulize(&argv[1])) {
  code = -1;
  return;
 }
 if (chdir(argv[1]) < 0) {
  perror(argv[1]);
  code = -1;
  return;
 }
 printf("Local directory now %s\n", getcwd(buf,sizeof(buf)));
 (void) fflush(stdout);
 code = 0;
}
