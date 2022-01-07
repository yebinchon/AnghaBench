
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 scalar_t__ IS (char*) ;
 char* LUA_COPYRIGHT ;
 char* Output ;
 scalar_t__ dumping ;
 int exit (int ) ;
 scalar_t__ listing ;
 char* output ;
 int printf (char*,char*) ;
 char* progname ;
 int stripping ;
 int usage (char*) ;

__attribute__((used)) static int doargs(int argc, char* argv[])
{
 int i;
 int version=0;
 if (argv[0]!=((void*)0) && *argv[0]!=0) progname=argv[0];
 for (i=1; i<argc; i++)
 {
  if (*argv[i]!='-')
   break;
  else if (IS("--"))
  {
   ++i;
   if (version) ++version;
   break;
  }
  else if (IS("-"))
   break;
  else if (IS("-l"))
   ++listing;
  else if (IS("-o"))
  {
   output=argv[++i];
   if (output==((void*)0) || *output==0 || (*output=='-' && output[1]!=0))
    usage("'-o' needs argument");
   if (IS("-")) output=((void*)0);
  }
  else if (IS("-p"))
   dumping=0;
  else if (IS("-s"))
   stripping=1;
  else if (IS("-v"))
   ++version;
  else
   usage(argv[i]);
 }
 if (i==argc && (listing || !dumping))
 {
  dumping=0;
  argv[--i]=Output;
 }
 if (version)
 {
  printf("%s\n",LUA_COPYRIGHT);
  if (version==argc-1) exit(EXIT_SUCCESS);
 }
 return i;
}
