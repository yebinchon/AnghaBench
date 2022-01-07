
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int GLADloadproc ;


 int close_gl () ;
 scalar_t__ get_proc ;
 int gladLoadWGLLoader (int ,int ) ;
 scalar_t__ open_gl () ;

int gladLoadWGL(HDC hdc) {
    if(open_gl()) {
        gladLoadWGLLoader((GLADloadproc)get_proc, hdc);
        close_gl();
        return 1;
    }

    return 0;
}
