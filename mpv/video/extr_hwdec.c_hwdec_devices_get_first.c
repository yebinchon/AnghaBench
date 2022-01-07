
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_devices {int dummy; } ;
struct mp_hwdec_ctx {int dummy; } ;


 struct mp_hwdec_ctx* hwdec_devices_get_n (struct mp_hwdec_devices*,int ) ;

struct mp_hwdec_ctx *hwdec_devices_get_first(struct mp_hwdec_devices *devs)
{
    return hwdec_devices_get_n(devs, 0);
}
