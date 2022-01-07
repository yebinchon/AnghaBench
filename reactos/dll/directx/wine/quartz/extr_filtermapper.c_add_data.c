
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Vector {int current; int capacity; int * pData; } ;
typedef int const* LPBYTE ;
typedef int BYTE ;


 int * CoTaskMemAlloc (int) ;
 int CoTaskMemFree (int const*) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int add_data(struct Vector * v, const BYTE * pData, int size)
{
    int index = v->current;
    if (v->current + size > v->capacity)
    {
        LPBYTE pOldData = v->pData;
        v->capacity = (v->capacity + size) * 2;
        v->pData = CoTaskMemAlloc(v->capacity);
        memcpy(v->pData, pOldData, v->current);
        CoTaskMemFree(pOldData);
    }
    memcpy(v->pData + v->current, pData, size);
    v->current += size;
    return index;
}
