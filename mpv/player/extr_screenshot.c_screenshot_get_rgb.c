
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {int dummy; } ;
struct MPContext {int log; int global; } ;


 int IMGFMT_BGR0 ;
 struct mp_image* convert_image (struct mp_image*,int ,int ,int ) ;
 struct mp_image* screenshot_get (struct MPContext*,int,int) ;
 int talloc_free (struct mp_image*) ;

__attribute__((used)) static struct mp_image *screenshot_get_rgb(struct MPContext *mpctx, int mode)
{
    struct mp_image *mpi = screenshot_get(mpctx, mode, 0);
    if (!mpi)
        return ((void*)0);
    struct mp_image *res = convert_image(mpi, IMGFMT_BGR0, mpctx->global,
                                         mpctx->log);
    talloc_free(mpi);
    return res;
}
