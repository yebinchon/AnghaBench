
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_FATAL ;
 int msg (int ,char*,int,int) ;

void
bad_address_length(int actual, int expected)
{
    msg(M_FATAL, "ERROR: received strange incoming packet with an address length of %d -- we only accept address lengths of %d.",
        actual,
        expected);
}
