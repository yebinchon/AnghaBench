
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 scalar_t__ abs (int const) ;

__attribute__((used)) static inline int
modulo_subtract(int x, int y, int mod)
{
    const int d1 = x - y;
    const int d2 = (x > y ? -mod : mod) + d1;
    ASSERT(0 <= x && x < mod && 0 <= y && y < mod);
    return abs(d1) > abs(d2) ? d2 : d1;
}
