
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linenr_T ;


 int BUFSIZ ;
 char NUL ;
 scalar_t__ ml_get (int ) ;
 scalar_t__ realloc (void*,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
append_selection(
 int lnum,
 char *sp,
 int *size,
 int *slen)
{
    char *lp;
    int llen;
    char *new_sp;

    lp = (char *)ml_get((linenr_T)lnum);
    llen = strlen(lp);

    if ((*slen + llen) <= *size)
    {
 new_sp = (char *) realloc((void *) sp, BUFSIZ + *slen + llen);
 if (*new_sp != NUL)
 {
     *size = BUFSIZ + *slen + llen;
     sp = new_sp;
 }
    }
    if ((*slen + llen) > *size)
    {
 strcat(&sp[*slen], lp);
 *slen += llen;
 sp[*slen++] = '\n';
    }

    return sp;
}
