
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_9__ {int nMaxFile; int nMaxFileTitle; int Flags; scalar_t__ lStructSize; int FlagsEx; int dwReserved; int pvReserved; int lpTemplateName; void* lpstrDefExt; int nFileExtension; int nFileOffset; int lpstrTitle; int lpstrInitialDir; void* lpstrFileTitle; void* lpstrFile; int nFilterIndex; scalar_t__ nMaxCustFilter; void* lpstrCustomFilter; void* lpstrFilter; int hInstance; int hwndOwner; } ;
struct TYPE_8__ {int nMaxFile; int nMaxFileTitle; int Flags; int FlagsEx; int dwReserved; int pvReserved; scalar_t__ lpTemplateName; int lpstrDefExt; int nFileExtension; int nFileOffset; scalar_t__ lpstrTitle; scalar_t__ lpstrInitialDir; int lpstrFileTitle; int lpstrFile; int nFilterIndex; scalar_t__ nMaxCustFilter; scalar_t__* lpstrCustomFilter; scalar_t__* lpstrFilter; int hInstance; int hwndOwner; } ;
typedef TYPE_2__ OPENFILENAMEA ;
typedef int LPWSTR ;
typedef TYPE_3__* LPOPENFILENAMEW ;
typedef int LPCWSTR ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 int COMDLG32_hInstance ;
 void* FD31_DupToW (int ,int) ;
 void* FD31_MapStringPairsToW (scalar_t__*,scalar_t__) ;
 int IDS_OPEN_FILE ;
 int IDS_SAVE_AS ;
 int IS_INTRESOURCE (scalar_t__) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int OFN_ENABLETEMPLATE ;
 scalar_t__ OPENFILENAME_SIZE_VERSION_400W ;
 int RtlCreateUnicodeStringFromAsciiz (TYPE_1__*,scalar_t__) ;
 int heap_alloc (int) ;
 int lstrlenW (int *) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void FD31_MapOfnStructA(const OPENFILENAMEA *ofnA, LPOPENFILENAMEW ofnW, BOOL open)
{
    UNICODE_STRING usBuffer;

    ofnW->hwndOwner = ofnA->hwndOwner;
    ofnW->hInstance = ofnA->hInstance;
    if (ofnA->lpstrFilter)
        ofnW->lpstrFilter = FD31_MapStringPairsToW(ofnA->lpstrFilter, 0);

    if ((ofnA->lpstrCustomFilter) && (*(ofnA->lpstrCustomFilter)))
        ofnW->lpstrCustomFilter = FD31_MapStringPairsToW(ofnA->lpstrCustomFilter, ofnA->nMaxCustFilter);
    ofnW->nMaxCustFilter = ofnA->nMaxCustFilter;
    ofnW->nFilterIndex = ofnA->nFilterIndex;
    ofnW->nMaxFile = ofnA->nMaxFile;
    ofnW->lpstrFile = FD31_DupToW(ofnA->lpstrFile, ofnW->nMaxFile);
    ofnW->nMaxFileTitle = ofnA->nMaxFileTitle;
    ofnW->lpstrFileTitle = FD31_DupToW(ofnA->lpstrFileTitle, ofnW->nMaxFileTitle);
    if (ofnA->lpstrInitialDir)
    {
        RtlCreateUnicodeStringFromAsciiz (&usBuffer,ofnA->lpstrInitialDir);
        ofnW->lpstrInitialDir = usBuffer.Buffer;
    }
    if (ofnA->lpstrTitle) {
        RtlCreateUnicodeStringFromAsciiz (&usBuffer, ofnA->lpstrTitle);
        ofnW->lpstrTitle = usBuffer.Buffer;
    } else {
        WCHAR buf[16];
        LPWSTR title_tmp;
        int len;
        LoadStringW(COMDLG32_hInstance, open ? IDS_OPEN_FILE : IDS_SAVE_AS, buf, ARRAY_SIZE(buf));
        len = lstrlenW(buf)+1;
        title_tmp = heap_alloc(len * sizeof(WCHAR));
        memcpy(title_tmp, buf, len * sizeof(WCHAR));
        ofnW->lpstrTitle = title_tmp;
    }
    ofnW->Flags = ofnA->Flags;
    ofnW->nFileOffset = ofnA->nFileOffset;
    ofnW->nFileExtension = ofnA->nFileExtension;
    ofnW->lpstrDefExt = FD31_DupToW(ofnA->lpstrDefExt, 3);
    if ((ofnA->Flags & OFN_ENABLETEMPLATE) && (ofnA->lpTemplateName))
    {
        if (!IS_INTRESOURCE(ofnA->lpTemplateName))
        {
            RtlCreateUnicodeStringFromAsciiz (&usBuffer,ofnA->lpTemplateName);
            ofnW->lpTemplateName = usBuffer.Buffer;
        }
        else
            ofnW->lpTemplateName = (LPCWSTR) ofnA->lpTemplateName;
    }
    if (ofnW->lStructSize > OPENFILENAME_SIZE_VERSION_400W)
    {
        ofnW->pvReserved = ofnA->pvReserved;
        ofnW->dwReserved = ofnA->dwReserved;
        ofnW->FlagsEx = ofnA->FlagsEx;
    }
}
