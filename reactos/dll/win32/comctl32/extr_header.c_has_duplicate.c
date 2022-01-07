
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t INT ;



__attribute__((used)) static INT has_duplicate(const INT *array, INT to, INT value)
{
    INT i;
    for(i = 0; i < to; i++)
        if (array[i] == value) return i;
    return -1;
}
