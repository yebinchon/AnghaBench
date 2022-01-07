
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsdisp_t ;


 int heap_free (int *) ;

__attribute__((used)) static void Object_destructor(jsdisp_t *dispex)
{
    heap_free(dispex);
}
