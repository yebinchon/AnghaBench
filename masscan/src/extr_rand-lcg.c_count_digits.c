
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static unsigned
count_digits(uint64_t num)
{
    unsigned result = 0;

    while (num) {
        result++;
        num /= 10;
    }

    return result;
}
