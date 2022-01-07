
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_hwdec {int ra; } ;
struct TYPE_3__ {int version; } ;
typedef TYPE_1__ GL ;


 int CGLGetCurrentContext () ;
 int MP_ERR (struct ra_hwdec*,char*) ;
 TYPE_1__* ra_gl_get (int ) ;
 int ra_is_gl (int ) ;

__attribute__((used)) static bool check_hwdec(struct ra_hwdec *hw)
{
    if (!ra_is_gl(hw->ra))
        return 0;

    GL *gl = ra_gl_get(hw->ra);
    if (gl->version < 300) {
        MP_ERR(hw, "need >= OpenGL 3.0 for core rectangle texture support\n");
        return 0;
    }

    if (!CGLGetCurrentContext()) {
        MP_ERR(hw, "need cocoa opengl backend to be active");
        return 0;
    }

    return 1;
}
