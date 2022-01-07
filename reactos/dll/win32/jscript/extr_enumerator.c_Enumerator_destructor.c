
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_3__ {int item; } ;
typedef TYPE_1__ EnumeratorInstance ;


 int TRACE (char*) ;
 TYPE_1__* enumerator_from_jsdisp (int *) ;
 int heap_free (int *) ;
 int jsval_release (int ) ;

__attribute__((used)) static void Enumerator_destructor(jsdisp_t *dispex)
{
    EnumeratorInstance *This = enumerator_from_jsdisp(dispex);

    TRACE("\n");

    jsval_release(This->item);
    heap_free(dispex);
}
