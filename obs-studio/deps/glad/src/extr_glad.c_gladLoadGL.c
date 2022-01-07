
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close_gl () ;
 int get_proc ;
 int gladLoadGLLoader (int *) ;
 scalar_t__ open_gl () ;

int gladLoadGL(void) {
    if(open_gl()) {
        gladLoadGLLoader(&get_proc);
        close_gl();
        return 1;
    }
    return 0;
}
