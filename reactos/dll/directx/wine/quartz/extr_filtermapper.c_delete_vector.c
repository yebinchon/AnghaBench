
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Vector {scalar_t__ capacity; scalar_t__ current; int pData; } ;


 int CoTaskMemFree (int ) ;

__attribute__((used)) static void delete_vector(struct Vector * v)
{
    CoTaskMemFree(v->pData);
    v->current = 0;
    v->capacity = 0;
}
