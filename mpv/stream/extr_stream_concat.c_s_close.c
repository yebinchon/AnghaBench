
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {struct priv* priv; } ;
struct priv {int num_streams; int * streams; } ;


 int free_stream (int ) ;

__attribute__((used)) static void s_close(struct stream *s)
{
    struct priv *p = s->priv;

    for (int n = 0; n < p->num_streams; n++)
        free_stream(p->streams[n]);
}
