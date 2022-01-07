
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t sinks_size; scalar_t__* sinks; } ;
typedef size_t DWORD ;
typedef int DISPPARAMS ;
typedef int DISPID ;
typedef TYPE_1__ ConnectionPoint ;


 int DISPATCH_METHOD ;
 int IDispatch_Invoke (scalar_t__,int ,int *,int ,int ,int *,int *,int *,int *) ;
 int IID_NULL ;
 int LOCALE_SYSTEM_DEFAULT ;

void call_sink(ConnectionPoint *This, DISPID dispid, DISPPARAMS *dispparams)
{
    DWORD i;

    for(i=0; i<This->sinks_size; i++) {
        if(This->sinks[i])
            IDispatch_Invoke(This->sinks[i], dispid, &IID_NULL, LOCALE_SYSTEM_DEFAULT,
                             DISPATCH_METHOD, dispparams, ((void*)0), ((void*)0), ((void*)0));
    }
}
