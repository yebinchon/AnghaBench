
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_time (int) ;

__attribute__((used)) static int test_gmtime(int offset)
{
    return check_time(offset) &&
           check_time(-offset) &&
           check_time(offset * 1000L) &&
           check_time(-offset * 1000L);
}
