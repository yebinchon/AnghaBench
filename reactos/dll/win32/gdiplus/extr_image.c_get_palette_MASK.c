#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int WICBitmapPaletteType ;
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  Count; int /*<<< orphan*/  Entries; } ;
typedef  int /*<<< orphan*/  IWICPalette ;
typedef  int /*<<< orphan*/  IWICImagingFactory ;
typedef  int /*<<< orphan*/  IWICBitmapFrameDecode ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ ColorPalette ;
typedef  scalar_t__ BOOL ;
typedef  int /*<<< orphan*/  ARGB ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PaletteFlagsGrayScale ; 
 int /*<<< orphan*/  PaletteFlagsHalftone ; 
 int /*<<< orphan*/  PaletteFlagsHasAlpha ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
#define  WICBitmapPaletteTypeFixedGray16 137 
#define  WICBitmapPaletteTypeFixedGray256 136 
#define  WICBitmapPaletteTypeFixedGray4 135 
#define  WICBitmapPaletteTypeFixedHalftone125 134 
#define  WICBitmapPaletteTypeFixedHalftone216 133 
#define  WICBitmapPaletteTypeFixedHalftone252 132 
#define  WICBitmapPaletteTypeFixedHalftone256 131 
#define  WICBitmapPaletteTypeFixedHalftone27 130 
#define  WICBitmapPaletteTypeFixedHalftone64 129 
#define  WICBitmapPaletteTypeFixedHalftone8 128 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ WINCODEC_ERR_PALETTEUNAVAILABLE ; 
 int /*<<< orphan*/  WINCODEC_SDK_VERSION ; 
 TYPE_1__* FUNC11 (int) ; 

__attribute__((used)) static ColorPalette *FUNC12(IWICBitmapFrameDecode *frame, WICBitmapPaletteType palette_type)
{
    HRESULT hr;
    IWICImagingFactory *factory;
    IWICPalette *wic_palette;
    ColorPalette *palette = NULL;

    hr = FUNC10(WINCODEC_SDK_VERSION, &factory);
    if (hr != S_OK) return NULL;

    hr = FUNC1(factory, &wic_palette);
    if (hr == S_OK)
    {
        hr = WINCODEC_ERR_PALETTEUNAVAILABLE;
        if (frame)
            hr = FUNC0(frame, wic_palette);
        if (hr != S_OK)
        {
            FUNC9("using predefined palette %#x\n", palette_type);
            hr = FUNC7(wic_palette, palette_type, FALSE);
        }
        if (hr == S_OK)
        {
            WICBitmapPaletteType type;
            BOOL alpha;
            UINT count;

            FUNC3(wic_palette, &count);
            palette = FUNC11(2 * sizeof(UINT) + count * sizeof(ARGB));
            FUNC4(wic_palette, count, palette->Entries, &palette->Count);

            FUNC5(wic_palette, &type);
            switch(type) {
                case WICBitmapPaletteTypeFixedGray4:
                case WICBitmapPaletteTypeFixedGray16:
                case WICBitmapPaletteTypeFixedGray256:
                    palette->Flags = PaletteFlagsGrayScale;
                    break;
                case WICBitmapPaletteTypeFixedHalftone8:
                case WICBitmapPaletteTypeFixedHalftone27:
                case WICBitmapPaletteTypeFixedHalftone64:
                case WICBitmapPaletteTypeFixedHalftone125:
                case WICBitmapPaletteTypeFixedHalftone216:
                case WICBitmapPaletteTypeFixedHalftone252:
                case WICBitmapPaletteTypeFixedHalftone256:
                    palette->Flags = PaletteFlagsHalftone;
                    break;
                default:
                    palette->Flags = 0;
            }
            FUNC6(wic_palette, &alpha);
            if(alpha)
                palette->Flags |= PaletteFlagsHasAlpha;
        }
        FUNC8(wic_palette);
    }
    FUNC2(factory);
    return palette;
}