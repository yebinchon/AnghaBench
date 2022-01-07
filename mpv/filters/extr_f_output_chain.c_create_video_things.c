
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mp_user_filter {char* name; int f; int wrapper; } ;
struct TYPE_4__ {int get_display_fps; struct chain* priv; } ;
struct chain {int num_post_filters; int post_filters; int num_pre_filters; int pre_filters; TYPE_2__ stream_info; TYPE_1__* f; int frame_type; } ;
struct TYPE_3__ {TYPE_2__* stream_info; } ;


 int MP_FRAME_VIDEO ;
 int MP_TARRAY_APPEND (struct chain*,int ,int ,struct mp_user_filter*) ;
 int abort () ;
 struct mp_user_filter* create_wrapper_filter (struct chain*) ;
 int get_display_fps ;
 int mp_autorotate_create (int ) ;
 int mp_deint_create (int ) ;

__attribute__((used)) static void create_video_things(struct chain *p)
{
    p->frame_type = MP_FRAME_VIDEO;

    p->stream_info.priv = p;
    p->stream_info.get_display_fps = get_display_fps;

    p->f->stream_info = &p->stream_info;

    struct mp_user_filter *f = create_wrapper_filter(p);
    f->name = "userdeint";
    f->f = mp_deint_create(f->wrapper);
    if (!f->f)
        abort();
    MP_TARRAY_APPEND(p, p->pre_filters, p->num_pre_filters, f);

    f = create_wrapper_filter(p);
    f->name = "autorotate";
    f->f = mp_autorotate_create(f->wrapper);
    if (!f->f)
        abort();
    MP_TARRAY_APPEND(p, p->post_filters, p->num_post_filters, f);
}
