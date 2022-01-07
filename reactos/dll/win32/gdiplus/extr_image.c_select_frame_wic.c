
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {scalar_t__ type; int format; int busy; int decoder; } ;
typedef scalar_t__ GpStatus ;
typedef int GpMetafile ;
typedef TYPE_1__ GpImage ;
typedef int GpBitmap ;
typedef int GUID ;


 int FALSE ;
 scalar_t__ ImageTypeBitmap ;
 scalar_t__ ImageTypeMetafile ;
 scalar_t__ Ok ;
 scalar_t__ decode_frame_wic (int ,int ,int ,int *,TYPE_1__**) ;
 int free_image_data (TYPE_1__*) ;
 int heap_free (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static GpStatus select_frame_wic(GpImage *image, UINT active_frame)
{
    GpImage *new_image;
    GpStatus status;

    status = decode_frame_wic(image->decoder, FALSE, active_frame, ((void*)0), &new_image);
    if(status != Ok)
        return status;

    new_image->busy = image->busy;
    memcpy(&new_image->format, &image->format, sizeof(GUID));
    free_image_data(image);
    if (image->type == ImageTypeBitmap)
        *(GpBitmap *)image = *(GpBitmap *)new_image;
    else if (image->type == ImageTypeMetafile)
        *(GpMetafile *)image = *(GpMetafile *)new_image;
    new_image->type = ~0;
    heap_free(new_image);
    return Ok;
}
