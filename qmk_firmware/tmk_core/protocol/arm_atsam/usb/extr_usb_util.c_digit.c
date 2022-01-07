
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char digit(int d, int radix) {
    if (d < 10) {
        return d + '0';
    } else {
        return d - 10 + 'A';
    }
}
