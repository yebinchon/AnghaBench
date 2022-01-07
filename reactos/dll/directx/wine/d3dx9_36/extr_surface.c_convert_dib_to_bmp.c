
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
typedef int UINT ;
struct TYPE_6__ {int bcBitCount; } ;
struct TYPE_5__ {int bfType; int bfSize; int bfOffBits; scalar_t__ bfReserved2; scalar_t__ bfReserved1; } ;
struct TYPE_4__ {int biClrUsed; int biBitCount; int biSize; scalar_t__ biCompression; } ;
typedef int RGBTRIPLE ;
typedef int RGBQUAD ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef int BITMAPV5HEADER ;
typedef int BITMAPV4HEADER ;
typedef TYPE_1__ BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPFILEHEADER ;
typedef TYPE_3__ BITMAPCOREHEADER ;


 scalar_t__ BI_BITFIELDS ;
 int CopyMemory (int *,void*,int) ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static BOOL convert_dib_to_bmp(void **data, UINT *size)
{
    ULONG header_size;
    ULONG count = 0;
    ULONG offset;
    BITMAPFILEHEADER *header;
    BYTE *new_data;
    UINT new_size;

    if ((*size < 4) || (*size < (header_size = *(ULONG*)*data)))
        return FALSE;

    if ((header_size == sizeof(BITMAPINFOHEADER)) ||
        (header_size == sizeof(BITMAPV4HEADER)) ||
        (header_size == sizeof(BITMAPV5HEADER)) ||
        (header_size == 64 ))
    {

        BITMAPINFOHEADER *info_header = (BITMAPINFOHEADER*)*data;
        count = info_header->biClrUsed;

        if (!count && info_header->biBitCount <= 8)
            count = 1 << info_header->biBitCount;

        offset = sizeof(BITMAPFILEHEADER) + header_size + sizeof(RGBQUAD) * count;


        if ((info_header->biSize == sizeof(BITMAPINFOHEADER)) && (info_header->biCompression == BI_BITFIELDS))
            offset += 3 * sizeof(DWORD);
    }
    else if (header_size == sizeof(BITMAPCOREHEADER))
    {
        BITMAPCOREHEADER *core_header = (BITMAPCOREHEADER*)*data;

        if (core_header->bcBitCount <= 8)
            count = 1 << core_header->bcBitCount;

        offset = sizeof(BITMAPFILEHEADER) + header_size + sizeof(RGBTRIPLE) * count;
    }
    else
    {
        return FALSE;
    }

    TRACE("Converting DIB file to BMP\n");

    new_size = *size + sizeof(BITMAPFILEHEADER);
    new_data = HeapAlloc(GetProcessHeap(), 0, new_size);
    CopyMemory(new_data + sizeof(BITMAPFILEHEADER), *data, *size);


    header = (BITMAPFILEHEADER*)new_data;
    header->bfType = 0x4d42;
    header->bfSize = new_size;
    header->bfReserved1 = 0;
    header->bfReserved2 = 0;
    header->bfOffBits = offset;


    *data = new_data;
    *size = new_size;

    return TRUE;
}
