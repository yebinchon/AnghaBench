
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ptr; } ;
struct nk_image {int w; int h; int* region; TYPE_2__ handle; } ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; int biCompression; } ;
struct TYPE_8__ {TYPE_1__ bmiHeader; int member_0; } ;
typedef unsigned char* LPBYTE ;
typedef int const INT ;
typedef int HBITMAP ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_3__ BITMAPINFO ;


 int BI_RGB ;
 int CreateDIBSection (int *,TYPE_3__*,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int SetDIBits (int *,int ,int ,int const,unsigned char*,TYPE_3__*,int ) ;

__attribute__((used)) static void
nk_create_image(struct nk_image * image, const char * frame_buffer, const int width, const int height)
{
    if (image && frame_buffer && (width > 0) && (height > 0))
    {
        image->w = width;
        image->h = height;
        image->region[0] = 0;
        image->region[1] = 0;
        image->region[2] = width;
        image->region[3] = height;

        INT row = ((width * 3 + 3) & ~3);
        BITMAPINFO bi = { 0 };
        bi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
        bi.bmiHeader.biWidth = width;
        bi.bmiHeader.biHeight = height;
        bi.bmiHeader.biPlanes = 1;
        bi.bmiHeader.biBitCount = 24;
        bi.bmiHeader.biCompression = BI_RGB;
        bi.bmiHeader.biSizeImage = row * height;

        LPBYTE lpBuf, pb = ((void*)0);
        HBITMAP hbm = CreateDIBSection(((void*)0), &bi, DIB_RGB_COLORS, (void**)&lpBuf, ((void*)0), 0);

        pb = lpBuf + row * height;
        unsigned char * src = (unsigned char *)frame_buffer;
        for (int v = 0; v<height; v++)
        {
            pb -= row;
            for (int i = 0; i < row; i += 3)
            {
                pb[i + 0] = src[0];
                pb[i + 1] = src[1];
                pb[i + 2] = src[2];
                src += 3;
            }
        }
        SetDIBits(((void*)0), hbm, 0, height, lpBuf, &bi, DIB_RGB_COLORS);
        image->handle.ptr = hbm;
    }
}
