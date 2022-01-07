
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int modf (double,double*) ;
 double to_digit (char) ;

__attribute__((used)) static char *
c_round(double fract, int *exp, char *start, char *end, char ch, char *signp)
{
    double tmp;

    if (fract)
        (void)modf(fract * 10, &tmp);
    else
        tmp = to_digit(ch);
    if (tmp > 4)
        for (;; --end) {
            if (*end == '.')
                --end;
            if (++*end <= '9')
                break;
            *end = '0';
            if (end == start) {
                if (exp) {
                    *end = '1';
                    ++*exp;
                }
                else {
                *--end = '1';
                --start;
                }
                break;
            }
        }

    else if (*signp == '-')
        for (;; --end) {
            if (*end == '.')
                --end;
            if (*end != '0')
                break;
            if (end == start)
                *signp = 0;
        }
    return (start);
}
