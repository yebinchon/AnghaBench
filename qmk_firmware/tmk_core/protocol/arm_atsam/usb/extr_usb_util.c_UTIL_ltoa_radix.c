
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int buf ;


 char digit (int,int) ;
 int memcpy (char*,char*,int) ;

int UTIL_ltoa_radix(int64_t value, char *dest, int radix) {
    int64_t original = value;
    char buf[25] = "";
    int c = sizeof(buf) - 1;
    int last = c;
    int d;
    int size;

    if (value < 0)
        value = -value;

    do
    {
        d = (value % radix);
        buf[--c] = digit(d, radix);
        value /= radix;
    } while (value);

    if (original < 0) buf[--c] = '-';

    size = last - c + 1;
    memcpy(dest, &buf[c], last - c + 1);

    return (size - 1);
}
