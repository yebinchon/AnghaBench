
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int64_t ;



__attribute__((used)) static bool is_int(double d)
{
    int64_t v = d;
    return d == (double)v;
}
