
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_stream_info {int hwdec_devs; } ;
struct mp_filter {int dummy; } ;
struct AVBufferRef {int dummy; } ;


 struct AVBufferRef* hwdec_devices_get_lavc (int ,int) ;
 int hwdec_devices_request_all (int ) ;
 struct mp_stream_info* mp_filter_find_stream_info (struct mp_filter*) ;

struct AVBufferRef *mp_filter_load_hwdec_device(struct mp_filter *f, int avtype)
{
    struct mp_stream_info *info = mp_filter_find_stream_info(f);
    if (!info || !info->hwdec_devs)
        return ((void*)0);

    hwdec_devices_request_all(info->hwdec_devs);

    return hwdec_devices_get_lavc(info->hwdec_devs, avtype);
}
