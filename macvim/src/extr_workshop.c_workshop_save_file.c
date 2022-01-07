
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cbuf ;


 int BUFSIZ ;
 int TRUE ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int coloncmd (char*,int ) ;
 int vim_snprintf (char*,int,char*,char*) ;
 int wstrace (char*,char*) ;

void
workshop_save_file(
     char *filename)
{
    char cbuf[BUFSIZ];







    vim_snprintf(cbuf, sizeof(cbuf), "w %s", filename);
    coloncmd(cbuf, TRUE);
}
