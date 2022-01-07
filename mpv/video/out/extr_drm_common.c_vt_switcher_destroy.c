
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_switcher {int tty_fd; } ;
struct vt_mode {int mode; int member_0; } ;


 int ACQUIRE_SIGNAL ;
 int MP_ERR (struct vt_switcher*,char*,int ) ;
 int RELEASE_SIGNAL ;
 int SIG_DFL ;
 int VT_AUTO ;
 int VT_SETMODE ;
 int close (int ) ;
 int errno ;
 int install_signal (int ,int ) ;
 scalar_t__ ioctl (int ,int ,struct vt_mode*) ;
 int mp_strerror (int ) ;
 int * vt_switcher_pipe ;

void vt_switcher_destroy(struct vt_switcher *s)
{
    struct vt_mode vt_mode = {0};
    vt_mode.mode = VT_AUTO;
    if (ioctl(s->tty_fd, VT_SETMODE, &vt_mode) < 0) {
        MP_ERR(s, "VT_SETMODE failed: %s\n", mp_strerror(errno));
        return;
    }

    install_signal(RELEASE_SIGNAL, SIG_DFL);
    install_signal(ACQUIRE_SIGNAL, SIG_DFL);
    close(s->tty_fd);
    close(vt_switcher_pipe[0]);
    close(vt_switcher_pipe[1]);
}
