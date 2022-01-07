
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_4__ {int str; } ;
typedef TYPE_1__ StringInstance ;


 int heap_free (TYPE_1__*) ;
 int jsstr_release (int ) ;
 TYPE_1__* string_from_jsdisp (int *) ;

__attribute__((used)) static void String_destructor(jsdisp_t *dispex)
{
    StringInstance *This = string_from_jsdisp(dispex);

    jsstr_release(This->str);
    heap_free(This);
}
