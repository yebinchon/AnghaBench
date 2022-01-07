
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int skip ;
typedef int char_u ;


 int FALSE ;
 int TRUE ;
 scalar_t__ cin_ends_in (int *,int *,int *) ;
 int * cin_skipcomment (int *) ;
 scalar_t__ cin_starts_with (int *,char*) ;
 int * ml_get_curline () ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
cin_isinit(void)
{
    char_u *s;
    static char *skip[] = {"static", "public", "protected", "private"};

    s = cin_skipcomment(ml_get_curline());

    if (cin_starts_with(s, "typedef"))
 s = cin_skipcomment(s + 7);

    for (;;)
    {
 int i, l;

 for (i = 0; i < (int)(sizeof(skip) / sizeof(char *)); ++i)
 {
     l = (int)strlen(skip[i]);
     if (cin_starts_with(s, skip[i]))
     {
  s = cin_skipcomment(s + l);
  l = 0;
  break;
     }
 }
 if (l != 0)
     break;
    }

    if (cin_starts_with(s, "enum"))
 return TRUE;

    if (cin_ends_in(s, (char_u *)"=", (char_u *)"{"))
 return TRUE;

    return FALSE;
}
