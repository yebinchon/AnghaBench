
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int version; int dsize; unsigned int topic_maplen; int** topic_map; int* topic_end; } ;
typedef int OFSTRUCT ;
typedef int LPCSTR ;
typedef TYPE_1__ HLPFILE ;
typedef scalar_t__ HFILE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GET_UINT (int*,int) ;
 scalar_t__ HFILE_ERROR ;
 int HLPFILE_AddPage (TYPE_1__*,int*,int*,int,unsigned int) ;
 int HLPFILE_GetContext (TYPE_1__*) ;
 int HLPFILE_GetKeywords (TYPE_1__*) ;
 int HLPFILE_GetMap (TYPE_1__*) ;
 int HLPFILE_GetTOMap (TYPE_1__*) ;
 int HLPFILE_ReadFileToBuffer (TYPE_1__*,scalar_t__) ;
 int HLPFILE_ReadFont (TYPE_1__*) ;
 int HLPFILE_SkipParagraph (TYPE_1__*,int*,int*,unsigned int*) ;
 int HLPFILE_SystemCommands (TYPE_1__*) ;
 int HLPFILE_UncompressLZ77_Phrases (TYPE_1__*) ;
 int HLPFILE_Uncompress_Phrases40 (TYPE_1__*) ;
 int HLPFILE_Uncompress_Topic (TYPE_1__*) ;




 int OF_READ ;
 scalar_t__ OpenFile (int ,int *,int ) ;
 int TRUE ;
 int WINE_ERR (char*,int) ;
 int WINE_TRACE (char*,int,unsigned int,unsigned int) ;
 int WINE_WARN (char*) ;
 int _lclose (scalar_t__) ;
 int* min (int*,int*) ;

__attribute__((used)) static BOOL HLPFILE_DoReadHlpFile(HLPFILE *hlpfile, LPCSTR lpszPath)
{
    BOOL ret;
    HFILE hFile;
    OFSTRUCT ofs;
    BYTE* buf;
    DWORD ref = 0x0C;
    unsigned index, old_index, offset, len, offs, topicoffset;

    hFile = OpenFile(lpszPath, &ofs, OF_READ);
    if (hFile == HFILE_ERROR) return FALSE;

    ret = HLPFILE_ReadFileToBuffer(hlpfile, hFile);
    _lclose(hFile);
    if (!ret) return FALSE;

    if (!HLPFILE_SystemCommands(hlpfile)) return FALSE;

    if (hlpfile->version <= 16 && !HLPFILE_GetTOMap(hlpfile)) return FALSE;


    if (!HLPFILE_UncompressLZ77_Phrases(hlpfile))
        HLPFILE_Uncompress_Phrases40(hlpfile);

    if (!HLPFILE_Uncompress_Topic(hlpfile)) return FALSE;
    if (!HLPFILE_ReadFont(hlpfile)) return FALSE;

    old_index = -1;
    offs = 0;
    do
    {
        BYTE* end;

        if (hlpfile->version <= 16)
        {
            index = (ref - 0x0C) / hlpfile->dsize;
            offset = (ref - 0x0C) % hlpfile->dsize;
        }
        else
        {
            index = (ref - 0x0C) >> 14;
            offset = (ref - 0x0C) & 0x3FFF;
        }

        if (hlpfile->version <= 16 && index != old_index && old_index != -1)
        {

            ref -= 12;
            offset -= 12;
        }

        WINE_TRACE("ref=%08x => [%u/%u]\n", ref, index, offset);

        if (index >= hlpfile->topic_maplen) {WINE_WARN("maplen\n"); break;}
        buf = hlpfile->topic_map[index] + offset;
        if (buf + 0x15 >= hlpfile->topic_end) {WINE_WARN("extra\n"); break;}
        end = min(buf + GET_UINT(buf, 0), hlpfile->topic_end);
        if (index != old_index) {offs = 0; old_index = index;}

        switch (buf[0x14])
 {
 case 128:
            if (hlpfile->version <= 16)
                topicoffset = ref + index * 12;
            else
                topicoffset = index * 0x8000 + offs;
            if (!HLPFILE_AddPage(hlpfile, buf, end, ref, topicoffset)) return FALSE;
            break;

 case 130:
 case 131:
 case 129:
            if (!HLPFILE_SkipParagraph(hlpfile, buf, end, &len)) return FALSE;
            offs += len;
            break;

 default:
            WINE_ERR("buf[0x14] = %x\n", buf[0x14]);
 }

        if (hlpfile->version <= 16)
        {
            ref += GET_UINT(buf, 0xc);
            if (GET_UINT(buf, 0xc) == 0)
                break;
        }
        else
            ref = GET_UINT(buf, 0xc);
    } while (ref != 0xffffffff);

    HLPFILE_GetKeywords(hlpfile);
    HLPFILE_GetMap(hlpfile);
    if (hlpfile->version <= 16) return TRUE;
    return HLPFILE_GetContext(hlpfile);
}
