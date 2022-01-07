
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_DIRECTION_BIDIRECTIONAL ;
 int KEY_DIRECTION_INVERSE ;
 int KEY_DIRECTION_NORMAL ;
 int msg (int,char*,char const*) ;
 int strcmp (char const*,char*) ;

int
ascii2keydirection(int msglevel, const char *str)
{
    if (!str)
    {
        return KEY_DIRECTION_BIDIRECTIONAL;
    }
    else if (!strcmp(str, "0"))
    {
        return KEY_DIRECTION_NORMAL;
    }
    else if (!strcmp(str, "1"))
    {
        return KEY_DIRECTION_INVERSE;
    }
    else
    {
        msg(msglevel, "Unknown key direction '%s' -- must be '0' or '1'", str);
        return -1;
    }
    return KEY_DIRECTION_BIDIRECTIONAL;
}
