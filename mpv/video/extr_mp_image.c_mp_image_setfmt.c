
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_imgfmt_desc {int num_planes; int id; } ;
struct mp_image_params {int imgfmt; } ;
struct mp_image {struct mp_image_params params; int num_planes; int imgfmt; struct mp_imgfmt_desc fmt; } ;


 struct mp_imgfmt_desc mp_imgfmt_get_desc (int) ;

void mp_image_setfmt(struct mp_image *mpi, int out_fmt)
{
    struct mp_image_params params = mpi->params;
    struct mp_imgfmt_desc fmt = mp_imgfmt_get_desc(out_fmt);
    params.imgfmt = fmt.id;
    mpi->fmt = fmt;
    mpi->imgfmt = fmt.id;
    mpi->num_planes = fmt.num_planes;
    mpi->params = params;
}
