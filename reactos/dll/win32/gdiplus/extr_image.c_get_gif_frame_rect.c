
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int IWICBitmapFrameDecode ;
typedef int HRESULT ;


 int GUID_MetadataFormatIMD ;
 int IWICBitmapFrameDecode_GetSize (int *,int *,int *) ;
 int get_gif_frame_property (int *,int *,char const*) ;

__attribute__((used)) static HRESULT get_gif_frame_rect(IWICBitmapFrameDecode *frame,
        UINT *left, UINT *top, UINT *width, UINT *height)
{
    static const WCHAR leftW[] = {'L','e','f','t',0};
    static const WCHAR topW[] = {'T','o','p',0};

    *left = get_gif_frame_property(frame, &GUID_MetadataFormatIMD, leftW);
    *top = get_gif_frame_property(frame, &GUID_MetadataFormatIMD, topW);

    return IWICBitmapFrameDecode_GetSize(frame, width, height);
}
