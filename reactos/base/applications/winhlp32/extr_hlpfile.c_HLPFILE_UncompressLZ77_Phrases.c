
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int version; int num_phrases; int* phrases_offsets; int* phrases_buffer; int hasPhrases; } ;
typedef TYPE_1__ HLPFILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GET_USHORT (int *,int) ;
 int GetProcessHeap () ;
 int HLPFILE_FindSubFile (TYPE_1__*,char*,int **,int **) ;
 int HLPFILE_UncompressLZ77 (int *,int *,int *) ;
 int HLPFILE_UncompressedLZ77_Size (int *,int *) ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int TRUE ;
 int WINE_WARN (char*) ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static BOOL HLPFILE_UncompressLZ77_Phrases(HLPFILE* hlpfile)
{
    UINT i, num, dec_size, head_size;
    BYTE *buf, *end;

    if (!HLPFILE_FindSubFile(hlpfile, "|Phrases", &buf, &end)) return FALSE;

    if (hlpfile->version <= 16)
        head_size = 13;
    else
        head_size = 17;

    num = hlpfile->num_phrases = GET_USHORT(buf, 9);
    if (buf + 2 * num + 0x13 >= end) {WINE_WARN("1a\n"); return FALSE;};

    if (hlpfile->version <= 16)
        dec_size = end - buf - 15 - 2 * num;
    else
        dec_size = HLPFILE_UncompressedLZ77_Size(buf + 0x13 + 2 * num, end);

    hlpfile->phrases_offsets = HeapAlloc(GetProcessHeap(), 0, sizeof(unsigned) * (num + 1));
    hlpfile->phrases_buffer = HeapAlloc(GetProcessHeap(), 0, dec_size);
    if (!hlpfile->phrases_offsets || !hlpfile->phrases_buffer)
    {
        HeapFree(GetProcessHeap(), 0, hlpfile->phrases_offsets);
        HeapFree(GetProcessHeap(), 0, hlpfile->phrases_buffer);
        return FALSE;
    }

    for (i = 0; i <= num; i++)
        hlpfile->phrases_offsets[i] = GET_USHORT(buf, head_size + 2 * i) - 2 * num - 2;

    if (hlpfile->version <= 16)
        memcpy(hlpfile->phrases_buffer, buf + 15 + 2*num, dec_size);
    else
        HLPFILE_UncompressLZ77(buf + 0x13 + 2 * num, end, (BYTE*)hlpfile->phrases_buffer);

    hlpfile->hasPhrases = TRUE;
    return TRUE;
}
