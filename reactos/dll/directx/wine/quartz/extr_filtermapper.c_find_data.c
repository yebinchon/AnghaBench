
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Vector {int current; scalar_t__ pData; } ;
typedef int BYTE ;


 int memcmp (scalar_t__,int const*,int) ;

__attribute__((used)) static int find_data(const struct Vector * v, const BYTE * pData, int size)
{
    int index;
    for (index = 0; index < v->current; index++)
        if (!memcmp(v->pData + index, pData, size))
            return index;

    return -1;
}
