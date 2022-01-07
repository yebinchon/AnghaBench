
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_8__ {int FilterID; int DisplayID; } ;
struct TYPE_7__ {int lStructSize; char* lpstrDefExt; int Flags; void* nMaxFileTitle; int lpstrFileTitle; void* nMaxFile; int lpstrFile; int * lpstrFilter; int hInstance; int hwndOwner; } ;
typedef TYPE_1__ OPENFILENAME ;
typedef int HWND ;
typedef TYPE_2__ FILTERPAIR ;
typedef int BOOL ;


 int BuildFilterStrings (int *,TYPE_2__*,int ) ;
 int COUNT_OF (TYPE_2__*) ;
 int FileNameBuffer ;
 int FileTitleBuffer ;
 int IDS_FLT_ALLFILES ;
 int IDS_FLT_ALLFILES_FLT ;
 int IDS_FLT_HIVFILES ;
 int IDS_FLT_HIVFILES_FLT ;
 int IDS_FLT_REGEDIT4 ;
 int IDS_FLT_REGEDIT4_FLT ;
 int IDS_FLT_REGFILES ;
 int IDS_FLT_REGFILES_FLT ;
 int OFN_HIDEREADONLY ;
 int TRUE ;
 void* _MAX_PATH ;
 int hInst ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BOOL InitOpenFileName(HWND hWnd, OPENFILENAME* pofn)
{
    FILTERPAIR FilterPairs[4];
    static WCHAR Filter[1024];

    memset(pofn, 0, sizeof(OPENFILENAME));
    pofn->lStructSize = sizeof(OPENFILENAME);
    pofn->hwndOwner = hWnd;
    pofn->hInstance = hInst;


    FilterPairs[0].DisplayID = IDS_FLT_REGFILES;
    FilterPairs[0].FilterID = IDS_FLT_REGFILES_FLT;
    FilterPairs[1].DisplayID = IDS_FLT_HIVFILES;
    FilterPairs[1].FilterID = IDS_FLT_HIVFILES_FLT;
    FilterPairs[2].DisplayID = IDS_FLT_REGEDIT4;
    FilterPairs[2].FilterID = IDS_FLT_REGEDIT4_FLT;
    FilterPairs[3].DisplayID = IDS_FLT_ALLFILES;
    FilterPairs[3].FilterID = IDS_FLT_ALLFILES_FLT;
    BuildFilterStrings(Filter, FilterPairs, COUNT_OF(FilterPairs));

    pofn->lpstrFilter = Filter;
    pofn->lpstrFile = FileNameBuffer;
    pofn->nMaxFile = _MAX_PATH;
    pofn->lpstrFileTitle = FileTitleBuffer;
    pofn->nMaxFileTitle = _MAX_PATH;
    pofn->Flags = OFN_HIDEREADONLY;
    pofn->lpstrDefExt = L"reg";
    return TRUE;
}
