
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileno (int ) ;
 int isatty (int ) ;
 char* secure_getenv (char*) ;
 int stdout ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static bool can_use_colors(void)
{
    const char *term;

    if (!isatty(fileno(stdout)))
        return 0;

    term = secure_getenv("TERM");
    if (term && streq(term, "dumb"))
        return 0;

    return 1;
}
