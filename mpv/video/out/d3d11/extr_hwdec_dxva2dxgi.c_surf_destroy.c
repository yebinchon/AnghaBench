
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec_mapper {int ra; } ;
struct queue_surf {int tex; int stage9; int surf9; int tex9; int stage11; int idle11; int tex11; } ;


 int SAFE_RELEASE (int ) ;
 int ra_tex_free (int ,int *) ;
 int talloc_free (struct queue_surf*) ;

__attribute__((used)) static void surf_destroy(struct ra_hwdec_mapper *mapper,
                         struct queue_surf *surf)
{
    if (!surf)
        return;
    SAFE_RELEASE(surf->tex11);
    SAFE_RELEASE(surf->idle11);
    SAFE_RELEASE(surf->stage11);
    SAFE_RELEASE(surf->tex9);
    SAFE_RELEASE(surf->surf9);
    SAFE_RELEASE(surf->stage9);
    ra_tex_free(mapper->ra, &surf->tex);
    talloc_free(surf);
}
