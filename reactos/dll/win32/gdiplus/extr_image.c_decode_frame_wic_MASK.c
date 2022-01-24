#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* metadata_reader_func ) (TYPE_1__*,int /*<<< orphan*/ *,int) ;
struct TYPE_21__ {int Width; int Height; int Y; scalar_t__ X; } ;
typedef  TYPE_2__ WICRect ;
typedef  int /*<<< orphan*/  WICPixelFormatGUID ;
typedef  int /*<<< orphan*/  WICBitmapPaletteType ;
typedef  int UINT ;
struct TYPE_25__ {int /*<<< orphan*/  palette_type; int /*<<< orphan*/  gdip_format; int /*<<< orphan*/ * wic_format; } ;
struct TYPE_24__ {int Stride; scalar_t__ Scan0; } ;
struct TYPE_23__ {scalar_t__ Flags; } ;
struct TYPE_22__ {double xres; double yres; int flags; int frame_count; int current_frame; TYPE_5__* palette; int /*<<< orphan*/ * decoder; } ;
struct TYPE_20__ {TYPE_3__ image; int /*<<< orphan*/ * metadata_reader; } ;
typedef  int /*<<< orphan*/  PixelFormat ;
typedef  int /*<<< orphan*/  IWICMetadataBlockReader ;
typedef  int /*<<< orphan*/  IWICBitmapSource ;
typedef  int /*<<< orphan*/  IWICBitmapFrameDecode ;
typedef  int /*<<< orphan*/  IWICBitmapDecoder ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ GpStatus ;
typedef  TYPE_3__ GpImage ;
typedef  TYPE_1__ GpBitmap ;
typedef  TYPE_5__ ColorPalette ;
typedef  TYPE_6__ BitmapData ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GUID_WICPixelFormat16bppGray ; 
 int /*<<< orphan*/  GUID_WICPixelFormat2bppGray ; 
 int /*<<< orphan*/  GUID_WICPixelFormat32bppBGRA ; 
 int /*<<< orphan*/  GUID_WICPixelFormat4bppGray ; 
 int /*<<< orphan*/  GUID_WICPixelFormat8bppGray ; 
 int /*<<< orphan*/  GUID_WICPixelFormatBlackWhite ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_6__*) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  IID_IWICMetadataBlockReader ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,double*,double*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int ImageFlagsColorSpaceGRAY ; 
 int ImageFlagsColorSpaceRGB ; 
 int ImageFlagsHasRealDPI ; 
 int ImageFlagsHasRealPixelSize ; 
 int ImageFlagsReadOnly ; 
 int /*<<< orphan*/  ImageLockModeWrite ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC21 (char*,TYPE_3__*,...) ; 
 int /*<<< orphan*/  WICBitmapPaletteTypeFixedHalftone256 ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 TYPE_5__* FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_5__*) ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 TYPE_7__* pixel_formats ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GpStatus FUNC28(IWICBitmapDecoder *decoder, BOOL force_conversion,
    UINT active_frame, metadata_reader_func metadata_reader, GpImage **image)
{
    GpStatus status=Ok;
    GpBitmap *bitmap;
    HRESULT hr;
    IWICBitmapFrameDecode *frame;
    IWICBitmapSource *source=NULL;
    IWICMetadataBlockReader *block_reader;
    WICPixelFormatGUID wic_format;
    PixelFormat gdip_format=0;
    ColorPalette *palette = NULL;
    WICBitmapPaletteType palette_type = WICBitmapPaletteTypeFixedHalftone256;
    int i;
    UINT width, height, frame_count;
    BitmapData lockeddata;
    WICRect wrc;

    FUNC21("%p,%u,%p\n", decoder, active_frame, image);

    FUNC7(decoder, &frame_count);
    hr = FUNC6(decoder, active_frame, &frame);
    if (FUNC20(hr)) /* got frame */
    {
        hr = FUNC8(frame, &wic_format);

        if (FUNC20(hr))
        {
            if (!force_conversion)
            {
                for (i=0; pixel_formats[i].wic_format; i++)
                {
                    if (FUNC19(&wic_format, pixel_formats[i].wic_format))
                    {
                        source = (IWICBitmapSource*)frame;
                        FUNC11(source);
                        gdip_format = pixel_formats[i].gdip_format;
                        palette_type = pixel_formats[i].palette_type;
                        break;
                    }
                }
            }
            if (!source)
            {
                /* unknown format; fall back on 32bppARGB */
                hr = FUNC22(&GUID_WICPixelFormat32bppBGRA, (IWICBitmapSource*)frame, &source);
                gdip_format = PixelFormat32bppARGB;
            }
            FUNC21("%s => %#x\n", FUNC27(&wic_format), gdip_format);
        }

        if (FUNC20(hr)) /* got source */
        {
            hr = FUNC14(source, &width, &height);

            if (FUNC20(hr))
                status = FUNC3(width, height, 0, gdip_format,
                    NULL, &bitmap);

            if (FUNC20(hr) && status == Ok) /* created bitmap */
            {
                status = FUNC1(bitmap, NULL, ImageLockModeWrite,
                    gdip_format, &lockeddata);
                if (status == Ok) /* locked bitmap */
                {
                    wrc.X = 0;
                    wrc.Width = width;
                    wrc.Height = 1;
                    for (i=0; i<height; i++)
                    {
                        wrc.Y = i;
                        hr = FUNC12(source, &wrc, FUNC23(lockeddata.Stride),
                            FUNC23(lockeddata.Stride), (BYTE*)lockeddata.Scan0+lockeddata.Stride*i);
                        if (FUNC0(hr)) break;
                    }

                    FUNC2(bitmap, &lockeddata);
                }

                if (FUNC20(hr) && status == Ok)
                    *image = &bitmap->image;
                else
                {
                    *image = NULL;
                    FUNC4(&bitmap->image);
                }

                if (FUNC20(hr) && status == Ok)
                {
                    double dpix, dpiy;
                    hr = FUNC13(source, &dpix, &dpiy);
                    if (FUNC20(hr))
                    {
                        bitmap->image.xres = dpix;
                        bitmap->image.yres = dpiy;
                    }
                    hr = S_OK;
                }
            }

            FUNC15(source);
        }

        if (FUNC20(hr)) {
            bitmap->metadata_reader = NULL;

            if (metadata_reader)
                metadata_reader(bitmap, decoder, active_frame);
            else if (FUNC9(frame, &IID_IWICMetadataBlockReader, (void **)&block_reader) == S_OK)
            {
                UINT block_count = 0;
                if (FUNC16(block_reader, &block_count) == S_OK && block_count)
                    FUNC17(block_reader, 0, &bitmap->metadata_reader);
                FUNC18(block_reader);
            }

            palette = FUNC24(frame, palette_type);
            FUNC10(frame);
        }
    }

    if (FUNC0(hr) && status == Ok) status = FUNC26(hr);

    if (status == Ok)
    {
        /* Native GDI+ used to be smarter, but since Win7 it just sets these flags. */
        bitmap->image.flags |= ImageFlagsReadOnly|ImageFlagsHasRealPixelSize|ImageFlagsHasRealDPI;
        if (FUNC19(&wic_format, &GUID_WICPixelFormat2bppGray) ||
            FUNC19(&wic_format, &GUID_WICPixelFormat4bppGray) ||
            FUNC19(&wic_format, &GUID_WICPixelFormat8bppGray) ||
            FUNC19(&wic_format, &GUID_WICPixelFormat16bppGray))
            bitmap->image.flags |= ImageFlagsColorSpaceGRAY;
        else
            bitmap->image.flags |= ImageFlagsColorSpaceRGB;
        bitmap->image.frame_count = frame_count;
        bitmap->image.current_frame = active_frame;
        bitmap->image.decoder = decoder;
        FUNC5(decoder);
        if (palette)
        {
            FUNC25(bitmap->image.palette);
            bitmap->image.palette = palette;
        }
        else
        {
            if (FUNC19(&wic_format, &GUID_WICPixelFormatBlackWhite))
                bitmap->image.palette->Flags = 0;
        }
        FUNC21("=> %p\n", *image);
    }

    return status;
}