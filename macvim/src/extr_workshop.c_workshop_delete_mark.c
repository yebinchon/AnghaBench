
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
 int vim_snprintf (char*,int,char*,int,char*) ;
 int wstrace (char*,char*,int) ;

void
workshop_delete_mark(
 char *filename,
 int markId)
{
    char cbuf[BUFSIZ];
    vim_snprintf(cbuf, sizeof(cbuf),
     "sign unplace %d file=%s", markId, filename);
    coloncmd(cbuf, TRUE);
}
