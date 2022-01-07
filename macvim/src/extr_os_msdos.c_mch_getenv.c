
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ char_u ;


 int MAXENVLEN ;
 scalar_t__ NUL ;
 int STRLEN (scalar_t__*) ;
 scalar_t__* alloc (int) ;
 scalar_t__ getenv (char*) ;
 scalar_t__ toupper (scalar_t__) ;
 int vim_free (scalar_t__*) ;

char_u *
mch_getenv(char_u *name)
{
    int i;

    char_u var_copy[50 + 1];
    char_u *p;
    char_u *res;







    if ((i = STRLEN(name)) > 50)
 p = alloc(i + 1);
    else
 p = var_copy;
    if (p == ((void*)0))
 p = name;
    else
    {
 for (i = 0; name[i] != NUL; ++i)
     p[i] = toupper(name[i]);
 p[i] = NUL;
    }

    res = (char_u *)getenv((char *)p);

    if (p != var_copy && p != name)
 vim_free(p);

    return res;
}
