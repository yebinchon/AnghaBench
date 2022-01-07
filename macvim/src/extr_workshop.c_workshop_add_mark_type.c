
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cibuf ;
typedef int char_u ;
typedef int cbuf ;


 int BUFSIZ ;
 int FALSE ;
 char NUL ;
 int STRCPY (char*,int ) ;
 int TRUE ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int coloncmd (char*,int ) ;
 int gettail (int *) ;
 char* strrchr (char*,char) ;
 int vim_snprintf (char*,int,char*,...) ;
 int wstrace (char*,int,char*,char*) ;

void
workshop_add_mark_type(
 int idx,
 char *colorspec,
 char *sign)
{
    char gbuf[BUFSIZ];
    char cibuf[BUFSIZ];
    char cbuf[BUFSIZ];
    char *bp;
    STRCPY(gbuf, gettail((char_u *)sign));
    bp = strrchr(gbuf, '.');
    if (bp != ((void*)0))
 *bp = NUL;

    if (gbuf[0] != '-' && gbuf[1] != NUL)
    {
 if (colorspec != ((void*)0) && *colorspec)
 {
     vim_snprintf(cbuf, sizeof(cbuf),
      "highlight WS%s guibg=%s", gbuf, colorspec);
     coloncmd(cbuf, FALSE);
     vim_snprintf(cibuf, sizeof(cibuf), "linehl=WS%s", gbuf);
 }
 else
     cibuf[0] = NUL;

 vim_snprintf(cbuf, sizeof(cbuf),
          "sign define %d %s icon=%s", idx, cibuf, sign);
 coloncmd(cbuf, TRUE);
    }
}
