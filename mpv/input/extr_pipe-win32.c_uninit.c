
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int fd; scalar_t__ close_fd; int thread; } ;
struct mp_input_src {struct priv* priv; } ;


 int CloseHandle (int ) ;
 int MP_VERBOSE (struct mp_input_src*,char*) ;
 int close (int ) ;

__attribute__((used)) static void uninit(struct mp_input_src *src)
{
    struct priv *p = src->priv;

    CloseHandle(p->thread);
    if (p->close_fd)
        close(p->fd);

    MP_VERBOSE(src, "Exited.\n");
}
