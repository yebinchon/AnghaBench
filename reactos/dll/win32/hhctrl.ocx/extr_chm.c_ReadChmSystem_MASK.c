#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ver ;
typedef  int /*<<< orphan*/  entry ;
typedef  int WORD ;
typedef  char WCHAR ;
struct TYPE_3__ {char* defToc; char* defTopic; char* defTitle; char* compiledFile; void* defWindow; int /*<<< orphan*/  codePage; int /*<<< orphan*/  pStorage; } ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  char DWORD ;
typedef  TYPE_1__ CHMInfo ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int LOCALE_IDEFAULTANSICODEPAGE ; 
 int LOCALE_RETURN_NUMBER ; 
 int /*<<< orphan*/  STGM_READ ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 
 void* FUNC12 (char*,int) ; 

__attribute__((used)) static BOOL FUNC13(CHMInfo *chm)
{
    IStream *stream;
    DWORD ver=0xdeadbeef, read, buf_size;
    char *buf;
    HRESULT hres;

    struct {
        WORD code;
        WORD len;
    } entry;

    static const WCHAR wszSYSTEM[] = {'#','S','Y','S','T','E','M',0};

    hres = FUNC2(chm->pStorage, wszSYSTEM, NULL, STGM_READ, 0, &stream);
    if(FUNC0(hres)) {
        FUNC7("Could not open #SYSTEM stream: %08x\n", hres);
        return FALSE;
    }

    FUNC3(stream, &ver, sizeof(ver), &read);
    FUNC6("version is %x\n", ver);

    buf = FUNC9(8*sizeof(DWORD));
    buf_size = 8*sizeof(DWORD);

    while(1) {
        hres = FUNC3(stream, &entry, sizeof(entry), &read);
        if(hres != S_OK)
            break;

        if(entry.len > buf_size)
            buf = FUNC11(buf, buf_size=entry.len);

        hres = FUNC3(stream, buf, entry.len, &read);
        if(hres != S_OK)
            break;

        switch(entry.code) {
        case 0x0:
            FUNC6("TOC is %s\n", FUNC8(buf, entry.len));
            FUNC10(chm->defToc);
            chm->defToc = FUNC12(buf, entry.len);
            break;
        case 0x2:
            FUNC6("Default topic is %s\n", FUNC8(buf, entry.len));
            FUNC10(chm->defTopic);
            chm->defTopic = FUNC12(buf, entry.len);
            break;
        case 0x3:
            FUNC6("Title is %s\n", FUNC8(buf, entry.len));
            FUNC10(chm->defTitle);
            chm->defTitle = FUNC12(buf, entry.len);
            break;
        case 0x4:
            /* TODO: Currently only the Locale ID is loaded from this field */
            FUNC6("Locale is: %d\n", *(LCID*)&buf[0]);
            if(!FUNC1(*(LCID*)&buf[0], LOCALE_IDEFAULTANSICODEPAGE|LOCALE_RETURN_NUMBER,
                               (WCHAR *)&chm->codePage, sizeof(chm->codePage)/sizeof(WCHAR)))
                chm->codePage = CP_ACP;
            break;
        case 0x5:
            FUNC6("Window name is %s\n", FUNC8(buf, entry.len));
            chm->defWindow = FUNC12(buf, entry.len);
            break;
        case 0x6:
            FUNC6("Compiled file is %s\n", FUNC8(buf, entry.len));
            FUNC10(chm->compiledFile);
            chm->compiledFile = FUNC12(buf, entry.len);
            break;
        case 0x9:
            FUNC6("Version is %s\n", FUNC8(buf, entry.len));
            break;
        case 0xa:
            FUNC6("Time is %08x\n", *(DWORD*)buf);
            break;
        case 0xc:
            FUNC6("Number of info types: %d\n", *(DWORD*)buf);
            break;
        case 0xf:
            FUNC6("Check sum: %x\n", *(DWORD*)buf);
            break;
        default:
            FUNC6("unhandled code %x, size %x\n", entry.code, entry.len);
        }
    }

    FUNC10(buf);
    FUNC4(stream);

    return FUNC5(hres);
}