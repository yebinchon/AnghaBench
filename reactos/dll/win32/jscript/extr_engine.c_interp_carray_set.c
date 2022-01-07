
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 int TRACE (char*,unsigned int const,int ) ;
 int assert (int ) ;
 int debugstr_jsval (int ) ;
 int get_object (int ) ;
 unsigned int get_op_uint (int *,int ) ;
 int iface_to_jsdisp (int ) ;
 int is_object_instance (int ) ;
 int jsdisp_propput_idx (int ,unsigned int const,int ) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int stack_top (int *) ;

__attribute__((used)) static HRESULT interp_carray_set(script_ctx_t *ctx)
{
    const unsigned index = get_op_uint(ctx, 0);
    jsval_t value, array;
    HRESULT hres;

    value = stack_pop(ctx);

    TRACE("[%u] = %s\n", index, debugstr_jsval(value));

    array = stack_top(ctx);
    assert(is_object_instance(array));

    hres = jsdisp_propput_idx(iface_to_jsdisp(get_object(array)), index, value);
    jsval_release(value);
    return hres;
}
