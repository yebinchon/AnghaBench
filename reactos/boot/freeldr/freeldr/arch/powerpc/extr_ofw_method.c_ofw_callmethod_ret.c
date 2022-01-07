
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* call_method; int nargs; int nrets; char const* method_name; int handle; int* args_rets; int member_0; } ;
typedef TYPE_1__ ofw_method_call ;


 int memcpy (int*,int*,int) ;
 int ofw_call_addr (TYPE_1__*) ;

int ofw_callmethod_ret(const char *method, int handle, int nargs, int *args, int ret)
{
    ofw_method_call callframe = { 0 };
    callframe.call_method = "call-method";
    callframe.nargs = nargs + 2;
    callframe.nrets = ret+1;
    callframe.method_name = method;
    callframe.handle = handle;
    memcpy(callframe.args_rets, args, sizeof(int)*nargs);
    ofw_call_addr(&callframe);
    return callframe.args_rets[nargs+ret];
}
