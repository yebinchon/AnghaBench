
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMDBUFSIZ ;
 int MAX (int,int ) ;
 int atoi (char*) ;
 int read (int ,...) ;
 scalar_t__ realloc (char*,int) ;
 int sd ;
 int workshop_connection_closed () ;

__attribute__((used)) static char *
getCommand(void)
{
 int len;
 char lenbuf[7];
 char *newcb;
 static char *cmdbuf;
 static int cbsize;

 if ((len = read(sd, &lenbuf, 6)) == 6) {
  lenbuf[6] = 0;
  len = atoi(lenbuf);
  if (cbsize < (len + 1)) {
   newcb = (char *) realloc(cmdbuf,
       MAX((len + 256), CMDBUFSIZ));
   if (newcb != ((void*)0)) {
    cmdbuf = newcb;
    cbsize = MAX((len + 256), CMDBUFSIZ);
   }
  }
  if (cbsize >= len && (len = read(sd, cmdbuf, len)) > 0) {
   cmdbuf[len] = 0;
   return cmdbuf;
  } else {
   return ((void*)0);
  }
 } else {
  if (len == 0) {
   workshop_connection_closed();
  }
  return ((void*)0);
 }

}
