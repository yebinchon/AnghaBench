
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int len; int* start; } ;



int bstrrchr(struct bstr str, int c)
{
    for (int i = str.len - 1; i >= 0; i--)
        if (str.start[i] == c)
            return i;
    return -1;
}
