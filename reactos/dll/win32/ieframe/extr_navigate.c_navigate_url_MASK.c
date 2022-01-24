#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  header; int /*<<< orphan*/  bsc; } ;
typedef  TYPE_1__ task_navigate_bsc_t ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  const VARIANT ;
typedef  int ULONG ;
struct TYPE_10__ {int /*<<< orphan*/ * url; scalar_t__ doc_navigate; int /*<<< orphan*/  ready_state; } ;
typedef  int /*<<< orphan*/  SAFEARRAY ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__* LPCWSTR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ DocHost ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  READYSTATE_LOADING ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int URL_APPLY_DEFAULT ; 
 int URL_APPLY_GUESSFILE ; 
 int URL_APPLY_GUESSSCHEME ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int VT_ARRAY ; 
 int VT_BSTR ; 
 int VT_EMPTY ; 
 int VT_ERROR ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ ** FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__* FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__*) ; 
 TYPE_1__* FUNC20 (int) ; 
 int /*<<< orphan*/  navigate_bsc_proc ; 
 int /*<<< orphan*/  navigate_bsc_task_destr ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ) ; 

HRESULT FUNC23(DocHost *This, LPCWSTR url, const VARIANT *Flags,
                     const VARIANT *TargetFrameName, VARIANT *PostData, VARIANT *Headers)
{
    SAFEARRAY *post_array = NULL;
    PBYTE post_data = NULL;
    ULONG post_data_len = 0;
    LPWSTR headers = NULL;
    HRESULT hres = S_OK;

    FUNC8("navigating to %s\n", FUNC19(url));

    if((Flags && FUNC14(Flags) != VT_EMPTY && FUNC14(Flags) != VT_ERROR)
       || (TargetFrameName && FUNC14(TargetFrameName) != VT_EMPTY && FUNC14(TargetFrameName) != VT_ERROR))
        FUNC2("Unsupported args (Flags %s; TargetFrameName %s)\n", FUNC18(Flags), FUNC18(TargetFrameName));

    if(PostData) {
        if(FUNC14(PostData) & VT_ARRAY)
            post_array = FUNC13(PostData) ? *FUNC11(PostData) : FUNC10(PostData);
        else
            FUNC15("Invalid post data %s\n", FUNC18(PostData));
    }

    if(post_array) {
        LONG elem_max;
        FUNC4(post_array, (void**)&post_data);
        FUNC6(post_array, 1, &elem_max);
        post_data_len = (elem_max+1) * FUNC5(post_array);
    }

    if(Headers && FUNC14(Headers) == VT_BSTR) {
        headers = FUNC12(Headers);
        FUNC8("Headers: %s\n", FUNC19(headers));
    }

    FUNC22(This, READYSTATE_LOADING);
    This->ready_state = READYSTATE_LOADING;

    if(This->doc_navigate) {
        WCHAR new_url[INTERNET_MAX_URL_LENGTH];

        if(FUNC3(url)) {
            new_url[0] = 0;
        }else {
            DWORD size;

            size = FUNC0(new_url);
            hres = FUNC9(url, new_url, &size,
                    URL_APPLY_GUESSSCHEME | URL_APPLY_GUESSFILE | URL_APPLY_DEFAULT);
            if(FUNC1(hres)) {
                FUNC15("UrlApplyScheme failed: %08x\n", hres);
                new_url[0] = 0;
            }
        }

        hres = FUNC16(This, *new_url ? new_url : url, headers, post_data,
                post_data_len, TRUE);
    }else {
        task_navigate_bsc_t *task;

        task = FUNC20(sizeof(*task));
        task->bsc = FUNC17(This, url, post_data, post_data_len, headers);
        FUNC21(This, &task->header, navigate_bsc_proc, navigate_bsc_task_destr, This->url == NULL);
    }

    if(post_data)
        FUNC7(post_array);

    return hres;
}