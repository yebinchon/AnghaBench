
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int64_t ;


 double INT64_MAX ;
 double INT64_MIN ;

__attribute__((used)) static bool same_as_int64(double d)
{

    return d >= INT64_MIN && d <= INT64_MAX && d == (int64_t)d;
}
