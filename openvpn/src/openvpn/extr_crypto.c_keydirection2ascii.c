
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int KEY_DIRECTION_BIDIRECTIONAL ;
 int KEY_DIRECTION_INVERSE ;
 int KEY_DIRECTION_NORMAL ;

const char *
keydirection2ascii(int kd, bool remote, bool humanreadable)
{
    if (kd == KEY_DIRECTION_BIDIRECTIONAL)
    {
        if (humanreadable)
        {
            return "not set";
        }
        else
        {
            return ((void*)0);
        }
    }
    else if (kd == KEY_DIRECTION_NORMAL)
    {
        return remote ? "1" : "0";
    }
    else if (kd == KEY_DIRECTION_INVERSE)
    {
        return remote ? "0" : "1";
    }
    else
    {
        ASSERT(0);
    }
    return ((void*)0);
}
