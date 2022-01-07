
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Boolean ;


 int BUFSIZ ;
 int TRUE ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int coloncmd (char*,int ) ;
 int sprintf (char*,char*,char*) ;
 int wstrace (char*,char*) ;

void
workshop_balloon_mode(
 Boolean on)
{
    char cbuf[BUFSIZ];






    sprintf(cbuf, "set %sbeval", on ? "" : "no");
    coloncmd(cbuf, TRUE);
}
