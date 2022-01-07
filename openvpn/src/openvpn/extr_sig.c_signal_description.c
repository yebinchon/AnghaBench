
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* signal_name (int const,int) ;

const char *
signal_description(const int signum, const char *sigtext)
{
    if (sigtext)
    {
        return sigtext;
    }
    else
    {
        return signal_name(signum, 0);
    }
}
