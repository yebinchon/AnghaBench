
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_user_filter {char* name; int f; int wrapper; } ;
struct chain {int num_post_filters; int post_filters; int frame_type; } ;


 int MP_FRAME_AUDIO ;
 int MP_TARRAY_APPEND (struct chain*,int ,int ,struct mp_user_filter*) ;
 int abort () ;
 struct mp_user_filter* create_wrapper_filter (struct chain*) ;
 int mp_autoaspeed_create (int ) ;

__attribute__((used)) static void create_audio_things(struct chain *p)
{
    p->frame_type = MP_FRAME_AUDIO;

    struct mp_user_filter *f = create_wrapper_filter(p);
    f->name = "userspeed";
    f->f = mp_autoaspeed_create(f->wrapper);
    if (!f->f)
        abort();
    MP_TARRAY_APPEND(p, p->post_filters, p->num_post_filters, f);
}
