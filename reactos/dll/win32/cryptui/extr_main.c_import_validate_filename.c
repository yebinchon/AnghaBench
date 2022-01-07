
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hCertStore; } ;
struct TYPE_4__ {TYPE_1__ u; int dwSubjectChoice; } ;
struct ImportWizData {int * pwszWizardTitle; int dwFlags; void* freeSource; TYPE_2__ importSrc; int contentType; } ;
typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int * LPCWSTR ;
typedef int HWND ;
typedef scalar_t__ HCERTSTORE ;
typedef scalar_t__ HANDLE ;
typedef void* BOOL ;


 int ARRAY_SIZE (int *) ;
 int CRYPTUI_WIZ_IMPORT_SUBJECT_CERT_STORE ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 void* FALSE ;
 int FILE_SHARE_READ ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessageW (int,int *,int ,int ,int *,int ,int *) ;
 int GENERIC_READ ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int IDS_IMPORT_BAD_FORMAT ;
 int IDS_IMPORT_OPEN_FAILED ;
 int IDS_IMPORT_TYPE_MISMATCH ;
 int IDS_IMPORT_WIZARD ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LoadStringW (int ,int ,int *,int ) ;
 int LocalFree (int *) ;
 int MAX_STRING_LEN ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBoxW (int ,int *,int *,int) ;
 int OPEN_EXISTING ;
 void* TRUE ;
 int check_store_context_type (int ,scalar_t__) ;
 int hInstance ;
 int import_warning (int ,int ,int *,int) ;
 int lstrcpyW (int *,int *) ;
 int lstrlenW (int *) ;
 scalar_t__ open_store_from_file (int ,int *,int *) ;

__attribute__((used)) static BOOL import_validate_filename(HWND hwnd, struct ImportWizData *data,
 LPCWSTR fileName)
{
    HANDLE file;
    BOOL ret = FALSE;

    file = CreateFileW(fileName, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
     OPEN_EXISTING, 0, ((void*)0));
    if (file != INVALID_HANDLE_VALUE)
    {
        HCERTSTORE source = open_store_from_file(data->dwFlags, fileName,
         &data->contentType);
        int warningID = 0;

        if (!source)
            warningID = IDS_IMPORT_BAD_FORMAT;
        else if (!check_store_context_type(data->dwFlags, source))
            warningID = IDS_IMPORT_TYPE_MISMATCH;
        else
        {
            data->importSrc.dwSubjectChoice =
             CRYPTUI_WIZ_IMPORT_SUBJECT_CERT_STORE;
            data->importSrc.u.hCertStore = source;
            data->freeSource = TRUE;
            ret = TRUE;
        }
        if (warningID)
        {
            import_warning(data->dwFlags, hwnd, data->pwszWizardTitle,
             warningID);
        }
        CloseHandle(file);
    }
    else
    {
        WCHAR title[MAX_STRING_LEN], error[MAX_STRING_LEN];
        LPCWSTR pTitle;
        LPWSTR msgBuf, fullError;

        if (data->pwszWizardTitle)
            pTitle = data->pwszWizardTitle;
        else
        {
            LoadStringW(hInstance, IDS_IMPORT_WIZARD, title, ARRAY_SIZE(title));
            pTitle = title;
        }
        LoadStringW(hInstance, IDS_IMPORT_OPEN_FAILED, error, ARRAY_SIZE(error));
        FormatMessageW(
         FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM, ((void*)0),
         GetLastError(), 0, (LPWSTR) &msgBuf, 0, ((void*)0));
        fullError = HeapAlloc(GetProcessHeap(), 0,
         (lstrlenW(error) + lstrlenW(fileName) + lstrlenW(msgBuf) + 3)
         * sizeof(WCHAR));
        if (fullError)
        {
            LPWSTR ptr = fullError;

            lstrcpyW(ptr, error);
            ptr += lstrlenW(error);
            lstrcpyW(ptr, fileName);
            ptr += lstrlenW(fileName);
            *ptr++ = ':';
            *ptr++ = '\n';
            lstrcpyW(ptr, msgBuf);
            MessageBoxW(hwnd, fullError, pTitle, MB_ICONERROR | MB_OK);
            HeapFree(GetProcessHeap(), 0, fullError);
        }
        LocalFree(msgBuf);
    }
    return ret;
}
