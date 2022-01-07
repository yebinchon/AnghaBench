
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int const* FALSE ;
 int GetProcessHeap () ;
 int HLPFILE_UncompressLZ77 (int const*,int const*,int*) ;
 int HLPFILE_UncompressRLE (int const*,int const*,int*,unsigned int) ;
 unsigned int HLPFILE_UncompressedLZ77_Size (int const*,int const*) ;
 int* HeapAlloc (int ,int ,unsigned int) ;
 int HeapFree (int ,int ,int*) ;
 int WINE_FIXME (char*,int) ;
 int WINE_TRACE (char*,int,unsigned int,unsigned int) ;
 int WINE_WARN (char*,unsigned int,unsigned int) ;

__attribute__((used)) static const BYTE* HLPFILE_DecompressGfx(const BYTE* src, unsigned csz, unsigned sz, BYTE packing,
                                              BYTE** alloc)
{
    const BYTE* dst;
    BYTE* tmp;
    unsigned sz77;

    WINE_TRACE("Unpacking (%d) from %u bytes to %u bytes\n", packing, csz, sz);

    switch (packing)
    {
    case 0:
        if (sz != csz)
            WINE_WARN("Bogus gfx sizes (uncompressed): %u / %u\n", sz, csz);
        dst = src;
        *alloc = ((void*)0);
        break;
    case 1:
        dst = *alloc = HeapAlloc(GetProcessHeap(), 0, sz);
        if (!dst) return ((void*)0);
        HLPFILE_UncompressRLE(src, src + csz, *alloc, sz);
        break;
    case 2:
        sz77 = HLPFILE_UncompressedLZ77_Size(src, src + csz);
        dst = *alloc = HeapAlloc(GetProcessHeap(), 0, sz77);
        if (!dst) return ((void*)0);
        HLPFILE_UncompressLZ77(src, src + csz, *alloc);
        if (sz77 != sz)
            WINE_WARN("Bogus gfx sizes (LZ77): %u / %u\n", sz77, sz);
        break;
    case 3:
        sz77 = HLPFILE_UncompressedLZ77_Size(src, src + csz);
        tmp = HeapAlloc(GetProcessHeap(), 0, sz77);
        if (!tmp) return FALSE;
        HLPFILE_UncompressLZ77(src, src + csz, tmp);
        dst = *alloc = HeapAlloc(GetProcessHeap(), 0, sz);
        if (!dst)
        {
            HeapFree(GetProcessHeap(), 0, tmp);
            return FALSE;
        }
        HLPFILE_UncompressRLE(tmp, tmp + sz77, *alloc, sz);
        HeapFree(GetProcessHeap(), 0, tmp);
        break;
    default:
        WINE_FIXME("Unsupported packing %u\n", packing);
        return ((void*)0);
    }
    return dst;
}
