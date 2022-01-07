
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* included_patches ;

int
highest_patch()
{
    int i;
    int h = 0;

    for (i = 0; included_patches[i] != 0; ++i)
 if (included_patches[i] > h)
     h = included_patches[i];
    return h;
}
