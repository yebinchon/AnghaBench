
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32_t ;


 size_t INT32_MAX ;

void grapheme_substr_ascii(char *str, size_t str_len, int32_t f, int32_t l, char **sub_str, int32_t *sub_str_len)
{
 int32_t str_len2 = (int32_t)str_len;
    *sub_str = ((void*)0);

    if(str_len > INT32_MAX) {

     return;
    }

    if ((l < 0 && -l > str_len2)) {
        return;
    } else if (l > 0 && l > str_len2) {
        l = str_len2;
    }

    if (f > str_len2 || (f < 0 && -f > str_len2)) {
        return;
    }

    if (l < 0 && str_len2 < f - l) {
        return;
    }




    if (f < 0) {
        f = str_len2 + f;
        if (f < 0) {
            f = 0;
        }
    }





    if (l < 0) {
        l = (str_len2 - f) + l;
        if (l < 0) {
            l = 0;
        }
    }

    if (f >= str_len2) {
        return;
    }

    if ((f + l) > str_len2) {
        l = str_len - f;
    }

    *sub_str = str + f;
    *sub_str_len = l;

    return;
}
