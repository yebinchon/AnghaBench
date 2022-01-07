
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_devices {int load_api_ctx; int (* load_api ) (int ) ;} ;


 int hwdec_devices_get_first (struct mp_hwdec_devices*) ;
 int stub1 (int ) ;

void hwdec_devices_request_all(struct mp_hwdec_devices *devs)
{
    if (devs->load_api && !hwdec_devices_get_first(devs))
        devs->load_api(devs->load_api_ctx);
}
