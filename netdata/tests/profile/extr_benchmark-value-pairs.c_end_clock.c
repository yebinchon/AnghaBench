
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; unsigned long long tv_usec; } ;


 unsigned long long clk ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long long end_clock() {
    struct timeval tv;
    if(unlikely(gettimeofday(&tv, ((void*)0)) == -1))
        return -1;
    return clk = tv.tv_sec * 1000000 + tv.tv_usec - clk;
}
