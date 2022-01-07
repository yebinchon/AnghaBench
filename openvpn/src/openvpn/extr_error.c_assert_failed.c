
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_FATAL ;
 int _exit (int) ;
 int msg (int ,char*,char const*,int,...) ;

void
assert_failed(const char *filename, int line, const char *condition)
{
    if (condition)
    {
        msg(M_FATAL, "Assertion failed at %s:%d (%s)", filename, line, condition);
    }
    else
    {
        msg(M_FATAL, "Assertion failed at %s:%d", filename, line);
    }
    _exit(1);
}
