
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_4__ {int str; int last_index_val; scalar_t__ jsregexp; } ;
typedef TYPE_1__ RegExpInstance ;


 int heap_free (TYPE_1__*) ;
 int jsstr_release (int ) ;
 int jsval_release (int ) ;
 int regexp_destroy (scalar_t__) ;
 TYPE_1__* regexp_from_jsdisp (int *) ;

__attribute__((used)) static void RegExp_destructor(jsdisp_t *dispex)
{
    RegExpInstance *This = regexp_from_jsdisp(dispex);

    if(This->jsregexp)
        regexp_destroy(This->jsregexp);
    jsval_release(This->last_index_val);
    jsstr_release(This->str);
    heap_free(This);
}
