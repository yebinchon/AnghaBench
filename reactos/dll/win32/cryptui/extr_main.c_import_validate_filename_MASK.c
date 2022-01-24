#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ hCertStore; } ;
struct TYPE_4__ {TYPE_1__ u; int /*<<< orphan*/  dwSubjectChoice; } ;
struct ImportWizData {int /*<<< orphan*/ * pwszWizardTitle; int /*<<< orphan*/  dwFlags; void* freeSource; TYPE_2__ importSrc; int /*<<< orphan*/  contentType; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HCERTSTORE ;
typedef  scalar_t__ HANDLE ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CRYPTUI_WIZ_IMPORT_SUBJECT_CERT_STORE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int IDS_IMPORT_BAD_FORMAT ; 
 int /*<<< orphan*/  IDS_IMPORT_OPEN_FAILED ; 
 int IDS_IMPORT_TYPE_MISMATCH ; 
 int /*<<< orphan*/  IDS_IMPORT_WIZARD ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int MAX_STRING_LEN ; 
 int MB_ICONERROR ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  hInstance ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC16(HWND hwnd, struct ImportWizData *data,
 LPCWSTR fileName)
{
    HANDLE file;
    BOOL ret = FALSE;

    file = FUNC2(fileName, GENERIC_READ, FILE_SHARE_READ, NULL,
     OPEN_EXISTING, 0, NULL);
    if (file != INVALID_HANDLE_VALUE)
    {
        HCERTSTORE source = FUNC15(data->dwFlags, fileName,
         &data->contentType);
        int warningID = 0;

        if (!source)
            warningID = IDS_IMPORT_BAD_FORMAT;
        else if (!FUNC11(data->dwFlags, source))
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
            FUNC12(data->dwFlags, hwnd, data->pwszWizardTitle,
             warningID);
        }
        FUNC1(file);
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
            FUNC8(hInstance, IDS_IMPORT_WIZARD, title, FUNC0(title));
            pTitle = title;
        }
        FUNC8(hInstance, IDS_IMPORT_OPEN_FAILED, error, FUNC0(error));
        FUNC3(
         FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM, NULL,
         FUNC4(), 0, (LPWSTR) &msgBuf, 0, NULL);
        fullError = FUNC6(FUNC5(), 0,
         (FUNC14(error) + FUNC14(fileName) + FUNC14(msgBuf) + 3)
         * sizeof(WCHAR));
        if (fullError)
        {
            LPWSTR ptr = fullError;

            FUNC13(ptr, error);
            ptr += FUNC14(error);
            FUNC13(ptr, fileName);
            ptr += FUNC14(fileName);
            *ptr++ = ':';
            *ptr++ = '\n';
            FUNC13(ptr, msgBuf);
            FUNC10(hwnd, fullError, pTitle, MB_ICONERROR | MB_OK);
            FUNC7(FUNC5(), 0, fullError);
        }
        FUNC9(msgBuf);
    }
    return ret;
}