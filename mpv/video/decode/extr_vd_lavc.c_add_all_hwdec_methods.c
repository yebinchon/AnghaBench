
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct hwdec_info {int use_hw_frames; int use_hw_device; int copying; int method_name; int pix_fmt; int lavc_device; TYPE_2__ const* codec; } ;
struct TYPE_8__ {scalar_t__ type; int capabilities; char* wrapper_name; } ;
struct TYPE_7__ {int methods; int pix_fmt; int device_type; } ;
typedef TYPE_1__ AVCodecHWConfig ;
typedef TYPE_2__ AVCodec ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_CAP_HARDWARE ;
 int AV_CODEC_CAP_HYBRID ;
 int AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX ;
 int AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX ;
 int AV_CODEC_HW_CONFIG_METHOD_INTERNAL ;
 int AV_PIX_FMT_NONE ;
 int add_hwdec_item (struct hwdec_info**,int*,struct hwdec_info) ;
 int assert (char const*) ;
 int av_codec_is_decoder (TYPE_2__ const*) ;
 TYPE_2__* av_codec_iterate (void**) ;
 char* av_get_pix_fmt_name (int ) ;
 char* av_hwdevice_get_type_name (int ) ;
 TYPE_1__* avcodec_get_hw_config (TYPE_2__ const*,int) ;
 int hwdec_compare ;
 int qsort (struct hwdec_info*,int,int,int ) ;
 int snprintf (int ,int,char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void add_all_hwdec_methods(struct hwdec_info **infos, int *num_infos)
{
    const AVCodec *codec = ((void*)0);
    void *iter = ((void*)0);
    while (1) {
        codec = av_codec_iterate(&iter);
        if (!codec)
            break;
        if (codec->type != AVMEDIA_TYPE_VIDEO || !av_codec_is_decoder(codec))
            continue;

        struct hwdec_info info_template = {
            .pix_fmt = AV_PIX_FMT_NONE,
            .codec = codec,
        };

        const char *wrapper = ((void*)0);
        if (codec->capabilities & (AV_CODEC_CAP_HARDWARE | AV_CODEC_CAP_HYBRID))
            wrapper = codec->wrapper_name;




        bool found_any = 0;
        for (int n = 0; ; n++) {
            const AVCodecHWConfig *cfg = avcodec_get_hw_config(codec, n);
            if (!cfg)
                break;

            if ((cfg->methods & AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX) ||
                (cfg->methods & AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX))
            {
                struct hwdec_info info = info_template;
                info.lavc_device = cfg->device_type;
                info.pix_fmt = cfg->pix_fmt;

                const char *name = av_hwdevice_get_type_name(cfg->device_type);
                assert(name);



                if (strcmp(name, "cuda") == 0 && !wrapper)
                    name = "nvdec";

                snprintf(info.method_name, sizeof(info.method_name), "%s", name);




                if (cfg->methods & AV_CODEC_HW_CONFIG_METHOD_HW_FRAMES_CTX) {
                    info.use_hw_frames = 1;
                } else {
                    info.use_hw_device = 1;
                }


                add_hwdec_item(infos, num_infos, info);


                info.copying = 1;
                if (cfg->methods & AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX) {
                    info.use_hw_frames = 0;
                    info.use_hw_device = 1;
                }
                add_hwdec_item(infos, num_infos, info);

                found_any = 1;
            } else if (cfg->methods & AV_CODEC_HW_CONFIG_METHOD_INTERNAL) {
                struct hwdec_info info = info_template;
                info.pix_fmt = cfg->pix_fmt;

                const char *name = wrapper;
                if (!name)
                    name = av_get_pix_fmt_name(info.pix_fmt);
                assert(name);

                snprintf(info.method_name, sizeof(info.method_name), "%s", name);


                add_hwdec_item(infos, num_infos, info);


                info.copying = 1;
                info.pix_fmt = AV_PIX_FMT_NONE;
                add_hwdec_item(infos, num_infos, info);

                found_any = 1;
            }
        }

        if (!found_any && wrapper) {



            struct hwdec_info info = info_template;
            info.copying = 1;

            snprintf(info.method_name, sizeof(info.method_name), "%s", wrapper);
            add_hwdec_item(infos, num_infos, info);
        }
    }

    qsort(*infos, *num_infos, sizeof(struct hwdec_info), hwdec_compare);
}
