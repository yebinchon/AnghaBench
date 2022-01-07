
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_image {int dummy; } ;
typedef int WCHAR ;
typedef int GpImage ;


 scalar_t__ GdipLoadImageFromFile (int const*,int **) ;
 struct nk_image nk_gdip_image_to_nk (int *) ;
 struct nk_image nk_image_id (int ) ;

struct nk_image
nk_gdip_load_image_from_file(const WCHAR *filename)
{
    GpImage *image;
    if (GdipLoadImageFromFile(filename, &image))
        return nk_image_id(0);
    return nk_gdip_image_to_nk(image);
}
