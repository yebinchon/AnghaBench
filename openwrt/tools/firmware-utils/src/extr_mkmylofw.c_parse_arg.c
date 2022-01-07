
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ARG_COUNT ;
 size_t MAX_ARG_LEN ;
 int memcpy (char*,char*,size_t) ;
 int memset (char**,int ,int) ;
 size_t strlen (char*) ;
 char* strsep (char**,char*) ;

int
parse_arg(char *arg, char *buf, char *argv[])
{
 int res = 0;
 size_t argl;
 char *tok;
 char **ap = &buf;
 int i;

 if ((arg == ((void*)0))) {

  return -1;
 }

 argl = strlen(arg);
 if (argl == 0) {

  return res;
 }

 if (argl >= MAX_ARG_LEN) {

  argl = MAX_ARG_LEN-1;
 }

 memset(argv, 0, MAX_ARG_COUNT * sizeof(void *));
 memcpy(buf, arg, argl);
 buf[argl] = '\0';

 for (i = 0; i < MAX_ARG_COUNT; i++) {
  tok = strsep(ap, ":");
  if (tok == ((void*)0)) {
   break;
  }





  argv[i] = tok;
  res++;
 }

 return res;
}
