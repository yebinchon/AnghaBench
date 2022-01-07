
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int topic_maplen; unsigned int tbsize; int dsize; int ** topic_map; int * topic_end; scalar_t__ compressed; } ;
typedef TYPE_1__ HLPFILE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int HLPFILE_FindSubFile (TYPE_1__*,char*,int **,int **) ;
 int * HLPFILE_UncompressLZ77 (int *,int ,int *) ;
 scalar_t__ HLPFILE_UncompressedLZ77_Size (int *,int ) ;
 void* HeapAlloc (int ,int ,int) ;
 int TRUE ;
 int WINE_WARN (char*) ;
 int memcpy (int *,int *,unsigned int) ;
 int min (int *,int *) ;

__attribute__((used)) static BOOL HLPFILE_Uncompress_Topic(HLPFILE* hlpfile)
{
    BYTE *buf, *ptr, *end, *newptr;
    unsigned int i, newsize = 0;
    unsigned int topic_size;

    if (!HLPFILE_FindSubFile(hlpfile, "|TOPIC", &buf, &end))
    {WINE_WARN("topic0\n"); return FALSE;}

    buf += 9;
    topic_size = end - buf;
    if (hlpfile->compressed)
    {
        hlpfile->topic_maplen = (topic_size - 1) / hlpfile->tbsize + 1;

        for (i = 0; i < hlpfile->topic_maplen; i++)
        {
            ptr = buf + i * hlpfile->tbsize;


            if (ptr + 0x44 > end) ptr = end - 0x44;

            newsize += HLPFILE_UncompressedLZ77_Size(ptr + 0xc, min(end, ptr + hlpfile->tbsize));
        }

        hlpfile->topic_map = HeapAlloc(GetProcessHeap(), 0,
                                       hlpfile->topic_maplen * sizeof(hlpfile->topic_map[0]) + newsize);
        if (!hlpfile->topic_map) return FALSE;
        newptr = (BYTE*)(hlpfile->topic_map + hlpfile->topic_maplen);
        hlpfile->topic_end = newptr + newsize;

        for (i = 0; i < hlpfile->topic_maplen; i++)
        {
            ptr = buf + i * hlpfile->tbsize;
            if (ptr + 0x44 > end) ptr = end - 0x44;

            hlpfile->topic_map[i] = newptr;
            newptr = HLPFILE_UncompressLZ77(ptr + 0xc, min(end, ptr + hlpfile->tbsize), newptr);
        }
    }
    else
    {



        hlpfile->topic_maplen = (topic_size - 1) / hlpfile->tbsize + 1;
        hlpfile->topic_map = HeapAlloc(GetProcessHeap(), 0,
                                       hlpfile->topic_maplen * (sizeof(hlpfile->topic_map[0]) + hlpfile->dsize));
        if (!hlpfile->topic_map) return FALSE;
        newptr = (BYTE*)(hlpfile->topic_map + hlpfile->topic_maplen);
        hlpfile->topic_end = newptr + topic_size;

        for (i = 0; i < hlpfile->topic_maplen; i++)
        {
            hlpfile->topic_map[i] = newptr + i * hlpfile->dsize;
            memcpy(hlpfile->topic_map[i], buf + i * hlpfile->tbsize + 0x0C, hlpfile->dsize);
        }
    }
    return TRUE;
}
