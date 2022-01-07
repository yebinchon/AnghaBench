
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_3__ {char* name; int attrib; } ;
typedef int EGLint ;
typedef int EGLDisplay ;
typedef int EGLConfig ;


 int MP_ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ eglGetConfigAttrib (int ,int ,int ,int*) ;
 TYPE_1__* mp_egl_attribs ;
 int mp_msg (struct mp_log*,int,char*,char const*,...) ;

__attribute__((used)) static void dump_egl_config(struct mp_log *log, int msgl, EGLDisplay display,
                            EGLConfig config)
{
    for (int n = 0; n < MP_ARRAY_SIZE(mp_egl_attribs); n++) {
        const char *name = mp_egl_attribs[n].name;
        EGLint v = -1;
        if (eglGetConfigAttrib(display, config, mp_egl_attribs[n].attrib, &v)) {
            mp_msg(log, msgl, "  %s=%d\n", name, v);
        } else {
            mp_msg(log, msgl, "  %s=<error>\n", name);
        }
    }
}
