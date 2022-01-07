
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_user_filter {int last_in_aformat; int name; int last_in_vformat; struct chain* p; } ;
struct mp_image {int params; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_aframe {int params; } ;
struct TYPE_2__ {int reconfig_happened; int output_aformat; int input_aformat; int output_params; int input_params; } ;
struct chain {TYPE_1__ public; struct mp_user_filter* output; struct mp_user_filter* input; } ;


 scalar_t__ MP_FRAME_AUDIO ;
 scalar_t__ MP_FRAME_VIDEO ;
 int MP_VERBOSE (struct chain*,char*,int ,int ) ;
 int mp_aframe_config_copy (int ,struct mp_image*) ;
 int mp_aframe_config_equals (struct mp_image*,int ) ;
 int mp_aframe_format_str (struct mp_image*) ;
 int mp_image_params_equal (int *,int *) ;
 int mp_image_params_to_str (int *) ;
 int update_output_caps (struct chain*) ;

__attribute__((used)) static void check_in_format_change(struct mp_user_filter *u,
                                   struct mp_frame frame)
{
    struct chain *p = u->p;

    if (frame.type == MP_FRAME_VIDEO) {
        struct mp_image *img = frame.data;

        if (!mp_image_params_equal(&img->params, &u->last_in_vformat)) {
            MP_VERBOSE(p, "[%s] %s\n", u->name,
                       mp_image_params_to_str(&img->params));
            u->last_in_vformat = img->params;

            if (u == p->input) {
                p->public.input_params = img->params;





                update_output_caps(p);
            } else if (u == p->output) {
                p->public.output_params = img->params;
            }

            p->public.reconfig_happened = 1;
        }
    }

    if (frame.type == MP_FRAME_AUDIO) {
        struct mp_aframe *aframe = frame.data;

        if (!mp_aframe_config_equals(aframe, u->last_in_aformat)) {
            MP_VERBOSE(p, "[%s] %s\n", u->name,
                       mp_aframe_format_str(aframe));
            mp_aframe_config_copy(u->last_in_aformat, aframe);

            if (u == p->input) {
                mp_aframe_config_copy(p->public.input_aformat, aframe);
            } else if (u == p->output) {
                mp_aframe_config_copy(p->public.output_aformat, aframe);
            }

            p->public.reconfig_happened = 1;
        }
    }
}
