
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct stream_avseek {int flags; int timestamp; int stream_index; } ;
struct mp_tags {int dummy; } ;
struct TYPE_11__ {TYPE_3__* priv; } ;
typedef TYPE_2__ stream_t ;
typedef int int64_t ;
struct TYPE_13__ {char* (* item_name ) (void*) ;} ;
struct TYPE_12__ {int read_seek; TYPE_1__* av_class; } ;
struct TYPE_10__ {void* (* child_next ) (TYPE_3__*,int *) ;} ;
typedef TYPE_3__ AVIOContext ;
typedef TYPE_4__ AVClass ;





 int STREAM_UNSUPPORTED ;
 int avio_seek_time (TYPE_3__*,int ,int ,int ) ;
 struct mp_tags* read_icy (TYPE_2__*) ;
 int strcmp (char const*,char const* const) ;
 int stream_drop_buffers (TYPE_2__*) ;
 void* stub1 (TYPE_3__*,int *) ;
 char* stub2 (void*) ;

__attribute__((used)) static int control(stream_t *s, int cmd, void *arg)
{
    AVIOContext *avio = s->priv;
    switch(cmd) {
    case 130: {
        struct stream_avseek *c = arg;
        int64_t r = avio_seek_time(avio, c->stream_index, c->timestamp, c->flags);
        if (r >= 0) {
            stream_drop_buffers(s);
            return 1;
        }
        break;
    }
    case 128: {






        const char *proto = ((void*)0);
        if (avio->av_class && avio->av_class->child_next) {


            void *child = avio->av_class->child_next(avio, ((void*)0));
            AVClass *cl = *(AVClass **)child;
            if (cl && cl->item_name)
                proto = cl->item_name(child);
        }
        static const char *const has_read_seek[] = {
            "rtmp", "rtmpt", "rtmpe", "rtmpte", "rtmps", "rtmpts", "mmsh", 0};
        for (int n = 0; has_read_seek[n]; n++) {
            if (avio->read_seek && proto && strcmp(proto, has_read_seek[n]) == 0)
                return 1;
        }
        break;
    }
    case 129: {
        *(struct mp_tags **)arg = read_icy(s);
        if (!*(struct mp_tags **)arg)
            break;
        return 1;
    }
    }
    return STREAM_UNSUPPORTED;
}
