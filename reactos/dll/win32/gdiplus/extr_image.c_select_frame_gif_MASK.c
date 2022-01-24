#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int UINT ;
struct TYPE_7__ {int /*<<< orphan*/  decoder; } ;
struct TYPE_9__ {int height; int stride; int width; TYPE_1__ image; scalar_t__ bits; } ;
struct TYPE_8__ {int current_frame; } ;
typedef  int /*<<< orphan*/  IWICBitmapFrameDecode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  TYPE_2__ GpImage ;
typedef  TYPE_3__ GpBitmap ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int GIF_DISPOSE_DO_NOT_DISPOSE ; 
 int GIF_DISPOSE_RESTORE_TO_BKGND ; 
 int GIF_DISPOSE_RESTORE_TO_PREV ; 
 int GIF_DISPOSE_UNSPECIFIED ; 
 int /*<<< orphan*/  GUID_MetadataFormatGCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Ok ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GpStatus FUNC8(GpImage* image, UINT active_frame)
{
    static const WCHAR disposalW[] = {'D','i','s','p','o','s','a','l',0};

    GpBitmap *bitmap = (GpBitmap*)image;
    IWICBitmapFrameDecode *frame;
    int cur_frame=0, disposal;
    BOOL bgcolor_set = FALSE;
    DWORD bgcolor = 0;
    HRESULT hr;

    if(active_frame > image->current_frame) {
        hr = FUNC1(bitmap->image.decoder, image->current_frame, &frame);
        if(FUNC0(hr))
            return FUNC7(hr);
        disposal = FUNC5(frame, &GUID_MetadataFormatGCE, disposalW);
        FUNC2(frame);

        if(disposal == GIF_DISPOSE_RESTORE_TO_BKGND)
            cur_frame = image->current_frame;
        else if(disposal != GIF_DISPOSE_RESTORE_TO_PREV)
            cur_frame = image->current_frame+1;
    }

    while(cur_frame != active_frame) {
        hr = FUNC1(bitmap->image.decoder, cur_frame, &frame);
        if(FUNC0(hr))
            return FUNC7(hr);
        disposal = FUNC5(frame, &GUID_MetadataFormatGCE, disposalW);

        if(disposal==GIF_DISPOSE_UNSPECIFIED || disposal==GIF_DISPOSE_DO_NOT_DISPOSE) {
            hr = FUNC3(bitmap, frame, cur_frame==0);
            if(FUNC0(hr))
                return FUNC7(hr);
        }else if(disposal == GIF_DISPOSE_RESTORE_TO_BKGND) {
            UINT left, top, width, height, i, j;

            if(!bgcolor_set) {
                bgcolor = FUNC4(bitmap);
                bgcolor_set = TRUE;
            }

            hr = FUNC6(frame, &left, &top, &width, &height);
            if(FUNC0(hr))
                return FUNC7(hr);
            for(i=top; i<top+height && i<bitmap->height; i++) {
                DWORD *bits = (DWORD*)(bitmap->bits+i*bitmap->stride);
                for(j=left; j<left+width && j<bitmap->width; j++)
                    bits[j] = bgcolor;
            }
        }

        FUNC2(frame);
        cur_frame++;
    }

    hr = FUNC1(bitmap->image.decoder, active_frame, &frame);
    if(FUNC0(hr))
        return FUNC7(hr);

    hr = FUNC3(bitmap, frame, cur_frame==0);
    FUNC2(frame);
    if(FUNC0(hr))
        return FUNC7(hr);

    image->current_frame = active_frame;
    return Ok;
}