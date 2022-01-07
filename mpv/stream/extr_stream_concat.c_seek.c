
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {scalar_t__ pos; struct priv* priv; } ;
struct priv {int num_streams; int cur; int * streams; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ stream_get_size (int ) ;
 int stream_seek (int ,scalar_t__) ;
 scalar_t__ stream_tell (int ) ;

__attribute__((used)) static int seek(struct stream *s, int64_t newpos)
{
    struct priv *p = s->priv;

    int64_t next_pos = 0;
    int64_t base_pos = 0;




    for (int n = 0; n < p->num_streams; n++) {
        if (next_pos > newpos)
            break;

        base_pos = next_pos;
        p->cur = n;

        int64_t size = stream_get_size(p->streams[n]);
        if (size < 0)
            break;

        next_pos = base_pos + size;
    }

    int ok = stream_seek(p->streams[p->cur], newpos - base_pos);
    s->pos = base_pos + stream_tell(p->streams[p->cur]);
    return ok;
}
