
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vo_x11_state {int display; } ;
struct vo {struct vo_x11_state* x11; struct mp_vo_opts* opts; } ;
struct mp_vo_opts {char* winname; } ;
struct TYPE_3__ {char* res_name; char* res_class; } ;
typedef TYPE_1__ XClassHint ;
typedef int Window ;


 int PropModeReplace ;
 int XA (struct vo_x11_state*,int ) ;
 int XA_CARDINAL ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int) ;
 int XSetClassHint (int ,int ,TYPE_1__*) ;
 int _NET_WM_PID ;
 long getpid () ;

__attribute__((used)) static void vo_x11_classhint(struct vo *vo, Window window, const char *name)
{
    struct mp_vo_opts *opts = vo->opts;
    struct vo_x11_state *x11 = vo->x11;
    XClassHint wmClass;
    long pid = getpid();

    wmClass.res_name = opts->winname ? opts->winname : (char *)name;
    wmClass.res_class = "mpv";
    XSetClassHint(x11->display, window, &wmClass);
    XChangeProperty(x11->display, window, XA(x11, _NET_WM_PID), XA_CARDINAL,
                    32, PropModeReplace, (unsigned char *) &pid, 1);
}
