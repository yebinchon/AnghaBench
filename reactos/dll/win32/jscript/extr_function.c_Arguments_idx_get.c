
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_13__ {TYPE_4__* function; TYPE_2__* frame; } ;
struct TYPE_12__ {TYPE_3__* func_code; } ;
struct TYPE_11__ {int * params; } ;
struct TYPE_10__ {TYPE_1__* base_scope; } ;
struct TYPE_9__ {int jsobj; } ;
typedef int HRESULT ;
typedef TYPE_5__ ArgumentsInstance ;


 int TRACE (char*,TYPE_5__*,unsigned int) ;
 TYPE_5__* arguments_from_jsdisp (int *) ;
 int * get_argument_ref (TYPE_5__*,unsigned int) ;
 int jsdisp_propget_name (int ,int ,int *) ;
 int jsval_copy (int ,int *) ;

__attribute__((used)) static HRESULT Arguments_idx_get(jsdisp_t *jsdisp, unsigned idx, jsval_t *r)
{
    ArgumentsInstance *arguments = arguments_from_jsdisp(jsdisp);
    jsval_t *ref;

    TRACE("%p[%u]\n", arguments, idx);

    if((ref = get_argument_ref(arguments, idx)))
        return jsval_copy(*ref, r);


    return jsdisp_propget_name(arguments->frame->base_scope->jsobj,
                               arguments->function->func_code->params[idx], r);
}
