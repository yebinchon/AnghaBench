#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int version; int dsize; unsigned int topic_maplen; int** topic_map; int* topic_end; } ;
typedef  int /*<<< orphan*/  OFSTRUCT ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  TYPE_1__ HLPFILE ;
typedef  scalar_t__ HFILE ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (int*,int) ; 
 scalar_t__ HFILE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*,int*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int*,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
#define  HLP_DISPLAY 131 
#define  HLP_DISPLAY30 130 
#define  HLP_TABLE 129 
#define  HLP_TOPICHDR 128 
 int /*<<< orphan*/  OF_READ ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int* FUNC18 (int*,int*) ; 

__attribute__((used)) static BOOL FUNC19(HLPFILE *hlpfile, LPCSTR lpszPath)
{
    BOOL        ret;
    HFILE       hFile;
    OFSTRUCT    ofs;
    BYTE*       buf;
    DWORD       ref = 0x0C;
    unsigned    index, old_index, offset, len, offs, topicoffset;

    hFile = FUNC13(lpszPath, &ofs, OF_READ);
    if (hFile == HFILE_ERROR) return FALSE;

    ret = FUNC6(hlpfile, hFile);
    FUNC17(hFile);
    if (!ret) return FALSE;

    if (!FUNC9(hlpfile)) return FALSE;

    if (hlpfile->version <= 16 && !FUNC5(hlpfile)) return FALSE;

    /* load phrases support */
    if (!FUNC10(hlpfile))
        FUNC11(hlpfile);

    if (!FUNC12(hlpfile)) return FALSE;
    if (!FUNC7(hlpfile)) return FALSE;

    old_index = -1;
    offs = 0;
    do
    {
        BYTE*   end;

        if (hlpfile->version <= 16)
        {
            index  = (ref - 0x0C) / hlpfile->dsize;
            offset = (ref - 0x0C) % hlpfile->dsize;
        }
        else
        {
            index  = (ref - 0x0C) >> 14;
            offset = (ref - 0x0C) & 0x3FFF;
        }

        if (hlpfile->version <= 16 && index != old_index && old_index != -1)
        {
            /* we jumped to the next block, adjust pointers */
            ref -= 12;
            offset -= 12;
        }

        FUNC15("ref=%08x => [%u/%u]\n", ref, index, offset);

        if (index >= hlpfile->topic_maplen) {FUNC16("maplen\n"); break;}
        buf = hlpfile->topic_map[index] + offset;
        if (buf + 0x15 >= hlpfile->topic_end) {FUNC16("extra\n"); break;}
        end = FUNC18(buf + FUNC0(buf, 0), hlpfile->topic_end);
        if (index != old_index) {offs = 0; old_index = index;}

        switch (buf[0x14])
	{
	case HLP_TOPICHDR: /* Topic Header */
            if (hlpfile->version <= 16)
                topicoffset = ref + index * 12;
            else
                topicoffset = index * 0x8000 + offs;
            if (!FUNC1(hlpfile, buf, end, ref, topicoffset)) return FALSE;
            break;

	case HLP_DISPLAY30:
	case HLP_DISPLAY:
	case HLP_TABLE:
            if (!FUNC8(hlpfile, buf, end, &len)) return FALSE;
            offs += len;
            break;

	default:
            FUNC14("buf[0x14] = %x\n", buf[0x14]);
	}

        if (hlpfile->version <= 16)
        {
            ref += FUNC0(buf, 0xc);
            if (FUNC0(buf, 0xc) == 0)
                break;
        }
        else
            ref = FUNC0(buf, 0xc);
    } while (ref != 0xffffffff);

    FUNC3(hlpfile);
    FUNC4(hlpfile);
    if (hlpfile->version <= 16) return TRUE;
    return FUNC2(hlpfile);
}