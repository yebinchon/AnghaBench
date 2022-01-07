
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ position; scalar_t__ length; } ;
struct TYPE_6__ {TYPE_1__ travellog; } ;
typedef int HRESULT ;
typedef TYPE_2__ DocHost ;


 int E_FAIL ;
 int WARN (char*) ;
 int navigate_history (TYPE_2__*,scalar_t__) ;

HRESULT go_forward(DocHost *This)
{
    if(This->travellog.position >= This->travellog.length) {
        WARN("No history available\n");
        return E_FAIL;
    }

    return navigate_history(This, This->travellog.position+1);
}
