
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec_mapper {int * tex; int ra; } ;


 int ra_tex_free (int ,int *) ;

__attribute__((used)) static void vaapi_vk_unmap(struct ra_hwdec_mapper *mapper)
{
    for (int n = 0; n < 4; n++)
        ra_tex_free(mapper->ra, &mapper->tex[n]);
}
