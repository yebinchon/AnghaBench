
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int buf_T ;


 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int buf_findsign (int *,int) ;
 int * buflist_findname (int *) ;
 int wstrace (char*,char*,int) ;

int
workshop_get_mark_lineno(
 char *filename,
 int markId)
{
    buf_T *buf;
    int lineno;
    lineno = 0;
    buf = buflist_findname((char_u *)filename);
    if (buf != ((void*)0))
 lineno = buf_findsign(buf, markId);

    return lineno;
}
