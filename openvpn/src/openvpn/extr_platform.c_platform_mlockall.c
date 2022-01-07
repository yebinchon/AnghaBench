
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int M_ERRNO ;
 int M_INFO ;
 int M_WARN ;
 scalar_t__ mlockall (int) ;
 int msg (int,char*) ;

void
platform_mlockall(bool print_msg)
{
    msg(M_WARN, "WARNING: mlockall call failed (function not implemented)");

}
