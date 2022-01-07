
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_stream {TYPE_2__* ds; } ;
struct mp_recorder {int dummy; } ;
struct demux_internal {int num_streams; TYPE_1__* d_thread; struct sh_stream** streams; } ;
struct TYPE_4__ {scalar_t__ selected; } ;
struct TYPE_3__ {int global; } ;


 int MP_TARRAY_APPEND (int *,struct sh_stream**,int,struct sh_stream*) ;
 struct mp_recorder* mp_recorder_create (int ,char const*,struct sh_stream**,int) ;
 int talloc_free (struct sh_stream**) ;

__attribute__((used)) static struct mp_recorder *recorder_create(struct demux_internal *in,
                                           const char *dst)
{
    struct sh_stream **streams = ((void*)0);
    int num_streams = 0;
    for (int n = 0; n < in->num_streams; n++) {
        struct sh_stream *stream = in->streams[n];
        if (stream->ds->selected)
            MP_TARRAY_APPEND(((void*)0), streams, num_streams, stream);
    }
    struct mp_recorder *res = mp_recorder_create(in->d_thread->global, dst,
                                                 streams, num_streams);
    talloc_free(streams);
    return res;
}
