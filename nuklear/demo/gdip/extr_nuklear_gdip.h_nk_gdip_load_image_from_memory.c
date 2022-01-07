
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nk_image {int dummy; } ;
typedef int nk_uint ;
struct TYPE_7__ {TYPE_1__* lpVtbl; } ;
struct TYPE_6__ {int (* Release ) (TYPE_2__*) ;} ;
typedef TYPE_2__ IStream ;
typedef scalar_t__ GpStatus ;
typedef int GpImage ;
typedef int BYTE ;


 scalar_t__ GdipLoadImageFromStream (TYPE_2__*,int **) ;
 TYPE_2__* SHCreateMemStream (int const*,int ) ;
 struct nk_image nk_gdip_image_to_nk (int *) ;
 struct nk_image nk_image_id (int ) ;
 int stub1 (TYPE_2__*) ;

struct nk_image
nk_gdip_load_image_from_memory(const void *membuf, nk_uint membufSize)
{
    GpImage* image;
    GpStatus status;
    IStream *stream = SHCreateMemStream((const BYTE*)membuf, membufSize);
    if (!stream)
        return nk_image_id(0);

    status = GdipLoadImageFromStream(stream, &image);
    stream->lpVtbl->Release(stream);

    if (status)
        return nk_image_id(0);

    return nk_gdip_image_to_nk(image);
}
