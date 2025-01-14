
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ UNLIKELY (int) ;
 int lwan_char_isdigit (char const) ;

__attribute__((used)) static int parse_2_digit_num(const char *str, const char end_chr, int min, int max)
{
    int val;

    if (UNLIKELY(!lwan_char_isdigit(*str)))
        return -EINVAL;
    if (UNLIKELY(!lwan_char_isdigit(*(str + 1))))
        return -EINVAL;
    if (UNLIKELY(*(str + 2) != end_chr))
        return -EINVAL;

    val = (*str - '0') * 10;
    val += *(str + 1) - '0';

    if (UNLIKELY(val < min || val > max))
        return -EINVAL;

    return val;
}
