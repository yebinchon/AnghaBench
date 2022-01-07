
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 int TRUE ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int coloncmd (char*,int ) ;
 int sprintf (char*,char*,int) ;
 int wstrace (char*,int) ;

void
workshop_balloon_delay(
 int delay)
{
    char cbuf[BUFSIZ];






    sprintf(cbuf, "set bdlay=%d", delay);
    coloncmd(cbuf, TRUE);
}
