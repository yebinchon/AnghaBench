
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
 int vim_snprintf (char*,int,char*,int,int,int,char*) ;
 int wstrace (char*,char*,int,int,int) ;

void
workshop_set_mark(
 char *filename,
 int lineno,
 int markId,
 int idx)
{
    char cbuf[BUFSIZ];
    vim_snprintf(cbuf, sizeof(cbuf), "sign place %d line=%d name=%d file=%s",
            markId, lineno, idx, filename);
    coloncmd(cbuf, TRUE);
}
