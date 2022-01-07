
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_chroma_location { ____Placeholder_mp_chroma_location } mp_chroma_location ;


 int MP_CHROMA_LEFT ;

void mp_get_chroma_location(enum mp_chroma_location loc, int *x, int *y)
{
    *x = 0;
    *y = 0;
    if (loc == MP_CHROMA_LEFT)
        *x = -1;
}
