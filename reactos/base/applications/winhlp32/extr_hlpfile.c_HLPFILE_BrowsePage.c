
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct RtfData {int allocated; unsigned int font_scale; unsigned int relative; int first_link; scalar_t__ char_pos; scalar_t__ char_pos_rel; int force_color; int * current_link; int ptr; int data; int in_text; } ;
struct TYPE_10__ {int charset; unsigned int numFonts; int version; int dsize; unsigned int topic_maplen; int** topic_map; int* topic_end; TYPE_2__* fonts; } ;
struct TYPE_9__ {int reference; int first_link; TYPE_4__* file; } ;
struct TYPE_7__ {int lfPitchAndFamily; int lfCharSet; char* lfFaceName; } ;
struct TYPE_8__ {int color; TYPE_1__ LogFont; } ;
typedef TYPE_3__ HLPFILE_PAGE ;
typedef TYPE_4__ HLPFILE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
 int FALSE ;






 int GET_UINT (int*,int) ;

 int GetBValue (int ) ;
 int GetGValue (int ) ;
 int GetProcessHeap () ;
 int GetRValue (int ) ;


 int HLPFILE_BrowseParagraph (TYPE_3__*,struct RtfData*,int*,int*,unsigned int*) ;
 int HLPFILE_RtfAddControl (struct RtfData*,char*) ;




 int HeapAlloc (int ,int ,int) ;





 int TRUE ;


 int WINE_ERR (char*,int) ;
 int WINE_FIXME (char*,int) ;
 int WINE_WARN (char*) ;
 int* min (int*,int*) ;
 int sprintf (char*,char*,...) ;

BOOL HLPFILE_BrowsePage(HLPFILE_PAGE* page, struct RtfData* rd,
                           unsigned font_scale, unsigned relative)
{
    HLPFILE *hlpfile = page->file;
    BYTE *buf, *end;
    DWORD ref = page->reference;
    unsigned index, old_index = -1, offset, count = 0, offs = 0;
    unsigned cpg, parlen;
    char tmp[1024];
    const char* ck = ((void*)0);

    rd->in_text = TRUE;
    rd->data = rd->ptr = HeapAlloc(GetProcessHeap(), 0, rd->allocated = 32768);
    rd->char_pos = 0;
    rd->first_link = rd->current_link = ((void*)0);
    rd->force_color = FALSE;
    rd->font_scale = font_scale;
    rd->relative = relative;
    rd->char_pos_rel = 0;

    switch (hlpfile->charset)
    {
    case 149:
    case 153: cpg = 1252; break;
    case 131: cpg = 932; break;
    case 140: cpg = 949; break;
    case 142: cpg = 936; break;
    case 150: cpg = 950; break;
    case 141: cpg = 1253; break;
    case 129: cpg = 1254; break;
    case 139: cpg = 1255; break;
    case 152: cpg = 1256; break;
    case 151: cpg = 1257; break;
    case 128: cpg = 1258; break;
    case 132: cpg = 1251; break;
    case 148: cpg = 1250; break;
    case 130: cpg = 874; break;
    case 134: cpg = 1361; break;
    case 133: ck = "mac"; break;
    default:
        WINE_FIXME("Unsupported charset %u\n", hlpfile->charset);
        cpg = 1252;
    }
    if (ck)
    {
        sprintf(tmp, "{\\rtf1\\%s\\deff0", ck);
        if (!HLPFILE_RtfAddControl(rd, tmp)) return FALSE;
    }
    else
    {
        sprintf(tmp, "{\\rtf1\\ansi\\ansicpg%d\\deff0", cpg);
        if (!HLPFILE_RtfAddControl(rd, tmp)) return FALSE;
    }


    if (!HLPFILE_RtfAddControl(rd, "{\\fonttbl")) return FALSE;
    for (index = 0; index < hlpfile->numFonts; index++)
    {
        const char* family;
        switch (hlpfile->fonts[index].LogFont.lfPitchAndFamily & 0xF0)
        {
        case 146: family = "modern"; break;
        case 145: family = "roman"; break;
        case 143: family = "swiss"; break;
        case 144: family = "script"; break;
        case 147: family = "decor"; break;
        default: family = "nil"; break;
        }
        sprintf(tmp, "{\\f%d\\f%s\\fprq%d\\fcharset%d %s;}",
                index, family,
                hlpfile->fonts[index].LogFont.lfPitchAndFamily & 0x0F,
                hlpfile->fonts[index].LogFont.lfCharSet,
                hlpfile->fonts[index].LogFont.lfFaceName);
        if (!HLPFILE_RtfAddControl(rd, tmp)) return FALSE;
    }
    if (!HLPFILE_RtfAddControl(rd, "}")) return FALSE;

    if (!HLPFILE_RtfAddControl(rd, "{\\colortbl ;\\red0\\green128\\blue0;")) return FALSE;
    for (index = 0; index < hlpfile->numFonts; index++)
    {
        sprintf(tmp, "\\red%d\\green%d\\blue%d;",
                GetRValue(hlpfile->fonts[index].color),
                GetGValue(hlpfile->fonts[index].color),
                GetBValue(hlpfile->fonts[index].color));
        if (!HLPFILE_RtfAddControl(rd, tmp)) return FALSE;
    }
    if (!HLPFILE_RtfAddControl(rd, "}")) return FALSE;

    do
    {
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

        if (index >= hlpfile->topic_maplen) {WINE_WARN("maplen\n"); break;}
        buf = hlpfile->topic_map[index] + offset;
        if (buf + 0x15 >= hlpfile->topic_end) {WINE_WARN("extra\n"); break;}
        end = min(buf + GET_UINT(buf, 0), hlpfile->topic_end);
        if (index != old_index) {offs = 0; old_index = index;}

        switch (buf[0x14])
        {
        case 135:
            if (count++) goto done;
            break;
        case 137:
        case 138:
        case 136:
            if (!HLPFILE_BrowseParagraph(page, rd, buf, end, &parlen)) return FALSE;
            if (relative > index * 0x8000 + offs)
                rd->char_pos_rel = rd->char_pos;
            offs += parlen;
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
done:
    page->first_link = rd->first_link;
    return HLPFILE_RtfAddControl(rd, "}");
}
