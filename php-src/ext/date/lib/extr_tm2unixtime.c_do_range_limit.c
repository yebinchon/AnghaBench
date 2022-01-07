
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;



__attribute__((used)) static void do_range_limit(timelib_sll start, timelib_sll end, timelib_sll adj, timelib_sll *a, timelib_sll *b)
{
 if (*a < start) {
  *b -= (start - *a - 1) / adj + 1;
  *a += adj * ((start - *a - 1) / adj + 1);
 }
 if (*a >= end) {
  *b += *a / adj;
  *a -= adj * (*a / adj);
 }
}
