
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int confirm (char*,char const*) ;
 int fflush (int ) ;
 int globulize (char const**) ;
 int printf (char*,char const*) ;
 int recvrequest (char const*,char const*,char const*,char*,int ) ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;

void ls(int argc, const char *argv[])
{
 const char *cmd;

 if (argc < 2)
  argc++, argv[1] = ((void*)0);
 if (argc < 3)
  argc++, argv[2] = "-";
 if (argc > 3) {
  printf("usage: %s remote-directory local-file\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 cmd = argv[0][0] == 'n' ? "NLST" : "LIST";

 if (strcmp(argv[2], "-") && !globulize(&argv[2])) {
  code = -1;
  return;
 }
 if (strcmp(argv[2], "-") && *argv[2] != '|')
  if (!globulize(&argv[2]) || !confirm("output to local-file:", argv[2])) {
   code = -1;
   return;
 }
 recvrequest(cmd, argv[2], argv[1], "w", 0);
}
