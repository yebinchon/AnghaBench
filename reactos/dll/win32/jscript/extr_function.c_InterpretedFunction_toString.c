
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsstr_t ;
struct TYPE_4__ {TYPE_1__* func_code; } ;
struct TYPE_3__ {int source_len; int source; } ;
typedef TYPE_2__ InterpretedFunction ;
typedef int HRESULT ;
typedef int FunctionInstance ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int * jsstr_alloc_len (int ,int ) ;

__attribute__((used)) static HRESULT InterpretedFunction_toString(FunctionInstance *func, jsstr_t **ret)
{
    InterpretedFunction *function = (InterpretedFunction*)func;

    *ret = jsstr_alloc_len(function->func_code->source, function->func_code->source_len);
    return *ret ? S_OK : E_OUTOFMEMORY;
}
