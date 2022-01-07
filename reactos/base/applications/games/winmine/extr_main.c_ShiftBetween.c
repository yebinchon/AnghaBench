
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;



__attribute__((used)) static void ShiftBetween(LONG* x, LONG* y, LONG a, LONG b)
{
    if (*x < a) {
 *y += a - *x;
 *x = a;
    }
    else if (*y > b) {
 *x -= *y - b;
 *y = b;
    }
}
