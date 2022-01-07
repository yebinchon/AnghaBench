
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vaapi_gl_mapper_priv {scalar_t__* images; int (* DestroyImageKHR ) (int ,scalar_t__) ;} ;
struct ra_hwdec_mapper {struct priv* priv; } ;
struct priv {struct vaapi_gl_mapper_priv* interop_mapper_priv; } ;


 int eglGetCurrentDisplay () ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void vaapi_gl_unmap(struct ra_hwdec_mapper *mapper)
{
    struct priv *p_mapper = mapper->priv;
    struct vaapi_gl_mapper_priv *p = p_mapper->interop_mapper_priv;

    if (p) {
        for (int n = 0; n < 4; n++) {
            if (p->images[n])
                p->DestroyImageKHR(eglGetCurrentDisplay(), p->images[n]);
            p->images[n] = 0;
        }
    }
}
