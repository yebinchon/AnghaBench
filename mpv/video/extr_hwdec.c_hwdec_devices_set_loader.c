
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_devices {void (* load_api ) (void*) ;void* load_api_ctx; } ;



void hwdec_devices_set_loader(struct mp_hwdec_devices *devs,
    void (*load_api)(void *ctx), void *load_api_ctx)
{
    devs->load_api = load_api;
    devs->load_api_ctx = load_api_ctx;
}
