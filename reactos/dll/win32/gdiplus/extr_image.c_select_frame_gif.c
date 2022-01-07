
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_7__ {int decoder; } ;
struct TYPE_9__ {int height; int stride; int width; TYPE_1__ image; scalar_t__ bits; } ;
struct TYPE_8__ {int current_frame; } ;
typedef int IWICBitmapFrameDecode ;
typedef int HRESULT ;
typedef int GpStatus ;
typedef TYPE_2__ GpImage ;
typedef TYPE_3__ GpBitmap ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int GIF_DISPOSE_DO_NOT_DISPOSE ;
 int GIF_DISPOSE_RESTORE_TO_BKGND ;
 int GIF_DISPOSE_RESTORE_TO_PREV ;
 int GIF_DISPOSE_UNSPECIFIED ;
 int GUID_MetadataFormatGCE ;
 int IWICBitmapDecoder_GetFrame (int ,int,int **) ;
 int IWICBitmapFrameDecode_Release (int *) ;
 int Ok ;
 scalar_t__ TRUE ;
 int blit_gif_frame (TYPE_3__*,int *,int) ;
 int get_gif_background_color (TYPE_3__*) ;
 int get_gif_frame_property (int *,int *,char const*) ;
 int get_gif_frame_rect (int *,int*,int*,int*,int*) ;
 int hresult_to_status (int ) ;

__attribute__((used)) static GpStatus select_frame_gif(GpImage* image, UINT active_frame)
{
    static const WCHAR disposalW[] = {'D','i','s','p','o','s','a','l',0};

    GpBitmap *bitmap = (GpBitmap*)image;
    IWICBitmapFrameDecode *frame;
    int cur_frame=0, disposal;
    BOOL bgcolor_set = FALSE;
    DWORD bgcolor = 0;
    HRESULT hr;

    if(active_frame > image->current_frame) {
        hr = IWICBitmapDecoder_GetFrame(bitmap->image.decoder, image->current_frame, &frame);
        if(FAILED(hr))
            return hresult_to_status(hr);
        disposal = get_gif_frame_property(frame, &GUID_MetadataFormatGCE, disposalW);
        IWICBitmapFrameDecode_Release(frame);

        if(disposal == GIF_DISPOSE_RESTORE_TO_BKGND)
            cur_frame = image->current_frame;
        else if(disposal != GIF_DISPOSE_RESTORE_TO_PREV)
            cur_frame = image->current_frame+1;
    }

    while(cur_frame != active_frame) {
        hr = IWICBitmapDecoder_GetFrame(bitmap->image.decoder, cur_frame, &frame);
        if(FAILED(hr))
            return hresult_to_status(hr);
        disposal = get_gif_frame_property(frame, &GUID_MetadataFormatGCE, disposalW);

        if(disposal==GIF_DISPOSE_UNSPECIFIED || disposal==GIF_DISPOSE_DO_NOT_DISPOSE) {
            hr = blit_gif_frame(bitmap, frame, cur_frame==0);
            if(FAILED(hr))
                return hresult_to_status(hr);
        }else if(disposal == GIF_DISPOSE_RESTORE_TO_BKGND) {
            UINT left, top, width, height, i, j;

            if(!bgcolor_set) {
                bgcolor = get_gif_background_color(bitmap);
                bgcolor_set = TRUE;
            }

            hr = get_gif_frame_rect(frame, &left, &top, &width, &height);
            if(FAILED(hr))
                return hresult_to_status(hr);
            for(i=top; i<top+height && i<bitmap->height; i++) {
                DWORD *bits = (DWORD*)(bitmap->bits+i*bitmap->stride);
                for(j=left; j<left+width && j<bitmap->width; j++)
                    bits[j] = bgcolor;
            }
        }

        IWICBitmapFrameDecode_Release(frame);
        cur_frame++;
    }

    hr = IWICBitmapDecoder_GetFrame(bitmap->image.decoder, active_frame, &frame);
    if(FAILED(hr))
        return hresult_to_status(hr);

    hr = blit_gif_frame(bitmap, frame, cur_frame==0);
    IWICBitmapFrameDecode_Release(frame);
    if(FAILED(hr))
        return hresult_to_status(hr);

    image->current_frame = active_frame;
    return Ok;
}
