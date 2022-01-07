
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IStream ;
typedef scalar_t__ GpStatus ;
typedef int GpMetafile ;
typedef int GpImage ;


 scalar_t__ InvalidParameter ;
 scalar_t__ Ok ;
 int TRACE (char*,...) ;
 scalar_t__ load_wmf (int *,int **) ;

__attribute__((used)) static GpStatus decode_image_wmf(IStream *stream, GpImage **image)
{
    GpMetafile *metafile;
    GpStatus status;

    TRACE("%p %p\n", stream, image);

    if (!stream || !image)
        return InvalidParameter;

    status = load_wmf(stream, &metafile);
    if (status != Ok)
    {
        TRACE("Could not load metafile\n");
        return status;
    }

    *image = (GpImage *)metafile;
    TRACE("<-- %p\n", *image);

    return Ok;
}
