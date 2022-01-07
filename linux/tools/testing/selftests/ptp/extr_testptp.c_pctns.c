
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_time {long long sec; scalar_t__ nsec; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int64_t pctns(struct ptp_clock_time *t)
{
 return t->sec * 1000000000LL + t->nsec;
}
