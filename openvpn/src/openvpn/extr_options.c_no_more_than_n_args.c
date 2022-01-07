
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int const NM_QUOTE_HINT ;
 int msg (int const,char*,char*,int const,char*,char*) ;
 int string_array_len (char const**) ;

__attribute__((used)) static bool
no_more_than_n_args(const int msglevel,
                    char *p[],
                    const int max,
                    const unsigned int flags)
{
    const int len = string_array_len((const char **)p);

    if (!len)
    {
        return 0;
    }

    if (len > max)
    {
        msg(msglevel, "the --%s directive should have at most %d parameter%s.%s",
            p[0],
            max - 1,
            max >= 3 ? "s" : "",
            (flags & NM_QUOTE_HINT) ? "  To pass a list of arguments as one of the parameters, try enclosing them in double quotes (\"\")." : "");
        return 0;
    }
    else
    {
        return 1;
    }
}
