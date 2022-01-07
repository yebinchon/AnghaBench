
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WICBitmapPaletteType ;
typedef int UINT ;
struct TYPE_4__ {int Flags; int Count; int Entries; } ;
typedef int IWICPalette ;
typedef int IWICImagingFactory ;
typedef int IWICBitmapFrameDecode ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ ColorPalette ;
typedef scalar_t__ BOOL ;
typedef int ARGB ;


 int FALSE ;
 scalar_t__ IWICBitmapFrameDecode_CopyPalette (int *,int *) ;
 scalar_t__ IWICImagingFactory_CreatePalette (int *,int **) ;
 int IWICImagingFactory_Release (int *) ;
 int IWICPalette_GetColorCount (int *,int*) ;
 int IWICPalette_GetColors (int *,int,int ,int *) ;
 int IWICPalette_GetType (int *,int*) ;
 int IWICPalette_HasAlpha (int *,scalar_t__*) ;
 scalar_t__ IWICPalette_InitializePredefined (int *,int,int ) ;
 int IWICPalette_Release (int *) ;
 int PaletteFlagsGrayScale ;
 int PaletteFlagsHalftone ;
 int PaletteFlagsHasAlpha ;
 scalar_t__ S_OK ;
 int TRACE (char*,int) ;
 scalar_t__ WICCreateImagingFactory_Proxy (int ,int **) ;
 scalar_t__ WINCODEC_ERR_PALETTEUNAVAILABLE ;
 int WINCODEC_SDK_VERSION ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static ColorPalette *get_palette(IWICBitmapFrameDecode *frame, WICBitmapPaletteType palette_type)
{
    HRESULT hr;
    IWICImagingFactory *factory;
    IWICPalette *wic_palette;
    ColorPalette *palette = ((void*)0);

    hr = WICCreateImagingFactory_Proxy(WINCODEC_SDK_VERSION, &factory);
    if (hr != S_OK) return ((void*)0);

    hr = IWICImagingFactory_CreatePalette(factory, &wic_palette);
    if (hr == S_OK)
    {
        hr = WINCODEC_ERR_PALETTEUNAVAILABLE;
        if (frame)
            hr = IWICBitmapFrameDecode_CopyPalette(frame, wic_palette);
        if (hr != S_OK)
        {
            TRACE("using predefined palette %#x\n", palette_type);
            hr = IWICPalette_InitializePredefined(wic_palette, palette_type, FALSE);
        }
        if (hr == S_OK)
        {
            WICBitmapPaletteType type;
            BOOL alpha;
            UINT count;

            IWICPalette_GetColorCount(wic_palette, &count);
            palette = heap_alloc(2 * sizeof(UINT) + count * sizeof(ARGB));
            IWICPalette_GetColors(wic_palette, count, palette->Entries, &palette->Count);

            IWICPalette_GetType(wic_palette, &type);
            switch(type) {
                case 135:
                case 137:
                case 136:
                    palette->Flags = PaletteFlagsGrayScale;
                    break;
                case 128:
                case 130:
                case 129:
                case 134:
                case 133:
                case 132:
                case 131:
                    palette->Flags = PaletteFlagsHalftone;
                    break;
                default:
                    palette->Flags = 0;
            }
            IWICPalette_HasAlpha(wic_palette, &alpha);
            if(alpha)
                palette->Flags |= PaletteFlagsHasAlpha;
        }
        IWICPalette_Release(wic_palette);
    }
    IWICImagingFactory_Release(factory);
    return palette;
}
