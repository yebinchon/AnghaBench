
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int check_malloc_return (char*) ;
 int isspace (int const) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static char *
argv_term(const char **f)
{
    const char *p = *f;
    const char *term = ((void*)0);
    size_t termlen = 0;

    if (*p == '\0')
    {
        return ((void*)0);
    }

    while (1)
    {
        const int c = *p;
        if (c == '\0')
        {
            break;
        }
        if (term)
        {
            if (!isspace(c))
            {
                ++termlen;
            }
            else
            {
                break;
            }
        }
        else
        {
            if (!isspace(c))
            {
                term = p;
                termlen = 1;
            }
        }
        ++p;
    }
    *f = p;

    if (term)
    {
        char *ret;
        ASSERT(termlen > 0);
        ret = malloc(termlen + 1);
        check_malloc_return(ret);
        memcpy(ret, term, termlen);
        ret[termlen] = '\0';
        return ret;
    }
    else
    {
        return ((void*)0);
    }
}
