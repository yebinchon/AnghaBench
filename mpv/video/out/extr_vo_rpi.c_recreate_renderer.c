
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {scalar_t__ params; } ;


 int MP_FATAL (struct vo*,char*) ;
 int MP_WARN (struct vo*,char*) ;
 int destroy_dispmanx (struct vo*) ;
 scalar_t__ reconfig (struct vo*,scalar_t__) ;
 int recreate_dispmanx (struct vo*) ;

__attribute__((used)) static void recreate_renderer(struct vo *vo)
{
    MP_WARN(vo, "Recreating renderer after display change.\n");

    destroy_dispmanx(vo);
    recreate_dispmanx(vo);

    if (vo->params) {
        if (reconfig(vo, vo->params) < 0)
            MP_FATAL(vo, "Recreation failed.\n");
    }
}
