
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {scalar_t__ seekable; struct priv* priv; } ;
struct priv {size_t cur; int num_streams; int * streams; } ;


 int stream_read_partial (int ,void*,int) ;
 int stream_seek (int ,int ) ;

__attribute__((used)) static int fill_buffer(struct stream *s, void *buffer, int len)
{
    struct priv *p = s->priv;

    while (1) {
        int res = stream_read_partial(p->streams[p->cur], buffer, len);
        if (res || p->cur == p->num_streams - 1)
            return res;

        p->cur += 1;
        if (s->seekable)
            stream_seek(p->streams[p->cur], 0);
    }
}
