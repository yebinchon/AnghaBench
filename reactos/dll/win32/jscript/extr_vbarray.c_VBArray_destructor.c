
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_4__ {int safearray; } ;
typedef TYPE_1__ VBArrayInstance ;


 int SafeArrayDestroy (int ) ;
 int heap_free (TYPE_1__*) ;
 TYPE_1__* vbarray_from_jsdisp (int *) ;

__attribute__((used)) static void VBArray_destructor(jsdisp_t *dispex)
{
    VBArrayInstance *vbarray = vbarray_from_jsdisp(dispex);

    SafeArrayDestroy(vbarray->safearray);
    heap_free(vbarray);
}
