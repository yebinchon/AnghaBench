
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VOCTRL_LOAD_HWDEC_API ;
 int vo_control (void*,int ,int *) ;

__attribute__((used)) static void call_request_hwdec_api(void *ctx)
{


    vo_control(ctx, VOCTRL_LOAD_HWDEC_API, ((void*)0));
}
