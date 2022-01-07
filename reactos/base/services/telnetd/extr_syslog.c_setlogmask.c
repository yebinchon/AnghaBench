
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_mask ;

int setlogmask( int mask )
{
    int ret = log_mask;

    if( mask )
        log_mask = mask;
    return ret;
}
