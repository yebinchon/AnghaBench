
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct priv {int fd; } ;
struct TYPE_3__ {int pos; struct priv* priv; } ;
typedef TYPE_1__ stream_t ;
typedef int off_t ;
typedef int int64_t ;


 int SEEK_END ;
 int SEEK_SET ;
 int lseek (int ,int ,int ) ;

__attribute__((used)) static int64_t get_size(stream_t *s)
{
    struct priv *p = s->priv;
    off_t size = lseek(p->fd, 0, SEEK_END);
    lseek(p->fd, s->pos, SEEK_SET);
    return size == (off_t)-1 ? -1 : size;
}
