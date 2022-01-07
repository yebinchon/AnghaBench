
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_tex {int dummy; } ;
struct ra_format {int name; } ;
struct gl_video {int ra; int log; } ;


 int MP_VERBOSE (struct gl_video*,char*,int ) ;
 int ra_tex_free (int ,struct ra_tex**) ;
 int ra_tex_resize (int ,int ,struct ra_tex**,int,int,struct ra_format const*) ;

__attribute__((used)) static bool test_fbo(struct gl_video *p, const struct ra_format *fmt)
{
    MP_VERBOSE(p, "Testing FBO format %s\n", fmt->name);
    struct ra_tex *tex = ((void*)0);
    bool success = ra_tex_resize(p->ra, p->log, &tex, 16, 16, fmt);
    ra_tex_free(p->ra, &tex);
    return success;
}
