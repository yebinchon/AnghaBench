
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
typedef int UINT ;
struct TYPE_4__ {int num_phrases; int hasPhrases40; scalar_t__* phrases_buffer; scalar_t__* phrases_offsets; } ;
typedef int INT ;
typedef TYPE_1__ HLPFILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GET_UINT (int *,int) ;
 int GET_USHORT (int *,int) ;
 int GetProcessHeap () ;
 int HLPFILE_FindSubFile (TYPE_1__*,char*,int **,int **) ;
 int HLPFILE_UncompressLZ77 (int *,int *,int *) ;
 int HLPFILE_UncompressedLZ77_Size (int *,int *) ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int TRUE ;
 int WINE_TRACE (char*,int,int,int,int,int,int,int,int) ;
 int WINE_WARN (char*,int,int) ;
 scalar_t__ getbit () ;
 int max (int,int) ;
 int memcpy (scalar_t__*,int *,int) ;

__attribute__((used)) static BOOL HLPFILE_Uncompress_Phrases40(HLPFILE* hlpfile)
{
    UINT num;
    INT dec_size, cpr_size;
    BYTE *buf_idx, *end_idx;
    BYTE *buf_phs, *end_phs;
    ULONG* ptr, mask = 0;
    unsigned int i;
    unsigned short bc, n;

    if (!HLPFILE_FindSubFile(hlpfile, "|PhrIndex", &buf_idx, &end_idx) ||
        !HLPFILE_FindSubFile(hlpfile, "|PhrImage", &buf_phs, &end_phs)) return FALSE;

    ptr = (ULONG*)(buf_idx + 9 + 28);
    bc = GET_USHORT(buf_idx, 9 + 24) & 0x0F;
    num = hlpfile->num_phrases = GET_USHORT(buf_idx, 9 + 4);

    WINE_TRACE("Index: Magic=%08x #entries=%u CpsdSize=%u PhrImgSize=%u\n"
               "\tPhrImgCprsdSize=%u 0=%u bc=%x ukn=%x\n",
               GET_UINT(buf_idx, 9 + 0),
               GET_UINT(buf_idx, 9 + 4),
               GET_UINT(buf_idx, 9 + 8),
               GET_UINT(buf_idx, 9 + 12),
               GET_UINT(buf_idx, 9 + 16),
               GET_UINT(buf_idx, 9 + 20),
               GET_USHORT(buf_idx, 9 + 24),
               GET_USHORT(buf_idx, 9 + 26));

    dec_size = GET_UINT(buf_idx, 9 + 12);
    cpr_size = GET_UINT(buf_idx, 9 + 16);

    if (dec_size != cpr_size &&
        dec_size != HLPFILE_UncompressedLZ77_Size(buf_phs + 9, end_phs))
    {
        WINE_WARN("size mismatch %u %u\n",
                  dec_size, HLPFILE_UncompressedLZ77_Size(buf_phs + 9, end_phs));
        dec_size = max(dec_size, HLPFILE_UncompressedLZ77_Size(buf_phs + 9, end_phs));
    }

    hlpfile->phrases_offsets = HeapAlloc(GetProcessHeap(), 0, sizeof(unsigned) * (num + 1));
    hlpfile->phrases_buffer = HeapAlloc(GetProcessHeap(), 0, dec_size);
    if (!hlpfile->phrases_offsets || !hlpfile->phrases_buffer)
    {
        HeapFree(GetProcessHeap(), 0, hlpfile->phrases_offsets);
        HeapFree(GetProcessHeap(), 0, hlpfile->phrases_buffer);
        return FALSE;
    }



    hlpfile->phrases_offsets[0] = 0;
    ptr--;
    for (i = 0; i < num; i++)
    {
        for (n = 1; ((mask <<= 1) ? (*ptr & mask) != 0: (*++ptr & (mask=1)) != 0); n += 1 << bc);
        if (((mask <<= 1) ? (*ptr & mask) != 0: (*++ptr & (mask=1)) != 0)) n++;
        if (bc > 1 && ((mask <<= 1) ? (*ptr & mask) != 0: (*++ptr & (mask=1)) != 0)) n += 2;
        if (bc > 2 && ((mask <<= 1) ? (*ptr & mask) != 0: (*++ptr & (mask=1)) != 0)) n += 4;
        if (bc > 3 && ((mask <<= 1) ? (*ptr & mask) != 0: (*++ptr & (mask=1)) != 0)) n += 8;
        if (bc > 4 && ((mask <<= 1) ? (*ptr & mask) != 0: (*++ptr & (mask=1)) != 0)) n += 16;
        hlpfile->phrases_offsets[i + 1] = hlpfile->phrases_offsets[i] + n;
    }


    if (dec_size == cpr_size)
        memcpy(hlpfile->phrases_buffer, buf_phs + 9, dec_size);
    else
        HLPFILE_UncompressLZ77(buf_phs + 9, end_phs, (BYTE*)hlpfile->phrases_buffer);

    hlpfile->hasPhrases40 = TRUE;
    return TRUE;
}
