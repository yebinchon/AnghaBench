
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RtfData {int dummy; } ;
typedef int ULONG ;
typedef int HLPFILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GET_UINT (int const*,int) ;
 int GET_USHORT (int const*,int) ;
 int GetProcessHeap () ;
 int HLPFILE_AddHotSpotLinks (struct RtfData*,int *,int const*,int,int) ;
 int * HLPFILE_DecompressGfx (int const*,int,int,int ,int **) ;
 scalar_t__ HLPFILE_RtfAddControl (struct RtfData*,char*) ;
 scalar_t__ HLPFILE_RtfAddHexBytes (struct RtfData*,int const*,int) ;
 int HeapFree (int ,int ,int *) ;
 int WINE_TRACE (char*,...) ;
 int fetch_ulong (int const**) ;
 unsigned int fetch_ushort (int const**) ;
 int sprintf (char*,char*,unsigned int,int,int) ;

__attribute__((used)) static BOOL HLPFILE_RtfAddMetaFile(struct RtfData* rd, HLPFILE* file, const BYTE* beg, BYTE pack)
{
    ULONG size, csize, off, hs_offset, hs_size;
    const BYTE* ptr;
    const BYTE* bits;
    BYTE* alloc = ((void*)0);
    char tmp[256];
    unsigned mm;
    BOOL ret;

    WINE_TRACE("Loading metafile\n");

    ptr = beg + 2;

    mm = fetch_ushort(&ptr);
    sprintf(tmp, "{\\pict\\wmetafile%u\\picw%u\\pich%u",
            mm, GET_USHORT(ptr, 0), GET_USHORT(ptr, 2));
    if (!HLPFILE_RtfAddControl(rd, tmp)) return FALSE;
    ptr += 4;

    size = fetch_ulong(&ptr);
    csize = fetch_ulong(&ptr);
    hs_size = fetch_ulong(&ptr);
    off = GET_UINT(ptr, 0);
    hs_offset = GET_UINT(ptr, 4);
    ptr += 8;

    HLPFILE_AddHotSpotLinks(rd, file, beg, hs_size, hs_offset);

    WINE_TRACE("sz=%u csz=%u offs=%u/%u,%u/%u\n",
               size, csize, off, (ULONG)(ptr - beg), hs_size, hs_offset);

    bits = HLPFILE_DecompressGfx(beg + off, csize, size, pack, &alloc);
    if (!bits) return FALSE;

    ret = HLPFILE_RtfAddHexBytes(rd, bits, size) &&
        HLPFILE_RtfAddControl(rd, "}");

    HeapFree(GetProcessHeap(), 0, alloc);

    return ret;
}
