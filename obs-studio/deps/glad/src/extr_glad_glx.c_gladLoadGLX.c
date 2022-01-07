
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLADloadproc ;
typedef int Display ;


 int close_gl () ;
 scalar_t__ get_proc ;
 int gladLoadGLXLoader (int ,int *,int) ;
 scalar_t__ open_gl () ;

int gladLoadGLX(Display *dpy, int screen) {
    if(open_gl()) {
        gladLoadGLXLoader((GLADloadproc)get_proc, dpy, screen);
        close_gl();
        return 1;
    }

    return 0;
}
