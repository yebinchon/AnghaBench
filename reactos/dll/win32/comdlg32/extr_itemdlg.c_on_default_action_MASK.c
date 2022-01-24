#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int UINT ;
struct TYPE_8__ {int options; scalar_t__ dlg_type; size_t filetypeindex; char const* default_ext; int /*<<< orphan*/ * psia_results; int /*<<< orphan*/  custom_title; int /*<<< orphan*/  dlg_hwnd; int /*<<< orphan*/  peb; TYPE_1__* filterspecs; scalar_t__ filterspec_count; scalar_t__ psi_folder; } ;
struct TYPE_7__ {int /*<<< orphan*/  pszSpec; } ;
typedef  int /*<<< orphan*/  SFGAOF ;
typedef  int /*<<< orphan*/  PCUITEMID_CHILD_ARRAY ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IShellItem ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ FileDialogImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  COMDLG32_hInstance ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FOS_FILEMUSTEXIST ; 
 int FOS_NOVALIDATE ; 
 int FOS_OVERWRITEPROMPT ; 
 int FOS_PICKFOLDERS ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDS_FILENOTEXISTING ; 
 int /*<<< orphan*/  IDS_INVALID_FOLDERNAME ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ ITEMDLG_TYPE_SAVE ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int MB_ICONEXCLAMATION ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
#define  ONOPEN_BROWSE 130 
#define  ONOPEN_OPEN 129 
#define  ONOPEN_SEARCH 128 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 char* FUNC23 (char*) ; 
 int /*<<< orphan*/  SBSP_DEFBROWSER ; 
 int /*<<< orphan*/  SFGAO_FOLDER ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIATTRIBFLAGS_AND ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC28 (char*,int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC31 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 char* FUNC32 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,char const*) ; 
 scalar_t__ FUNC34 (char*,char*) ; 
 int /*<<< orphan*/  FUNC35 (char*,char const*) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC38(FileDialogImpl *This)
{
    IShellFolder *psf_parent, *psf_desktop;
    LPITEMIDLIST *pidla;
    LPITEMIDLIST current_folder;
    LPWSTR fn_iter, files = NULL, tmp_files;
    UINT file_count = 0, len, i;
    int open_action;
    HRESULT hr, ret = E_FAIL;

    len = FUNC31(This, &tmp_files);
    if(len)
    {
        UINT size_used;
        file_count = FUNC3(tmp_files, len, &files, &size_used);
        FUNC4(tmp_files);
    }
    if(!file_count) return E_FAIL;

    hr = FUNC26((IUnknown*)This->psi_folder, &current_folder);
    if(FUNC6(hr))
    {
        FUNC5("Failed to get pidl for current directory.\n");
        FUNC12(FUNC10(), 0, files);
        return hr;
    }

    FUNC28("Acting on %d file(s).\n", file_count);

    pidla = FUNC11(FUNC10(), 0, sizeof(LPITEMIDLIST) * file_count);
    open_action = ONOPEN_OPEN;
    fn_iter = files;

    for(i = 0; i < file_count && open_action == ONOPEN_OPEN; i++)
    {
        WCHAR canon_filename[MAX_PATH];
        psf_parent = NULL;

        FUNC1(current_folder, fn_iter, canon_filename);

        if( (This->options & FOS_NOVALIDATE) &&
            !(This->options & FOS_FILEMUSTEXIST) )
            open_action = ONOPEN_OPEN;
        else
            open_action = ONOPEN_BROWSE;

        open_action = FUNC8(canon_filename, &psf_parent, This->dlg_hwnd,
                                                   This->options & ~FOS_FILEMUSTEXIST,
                                                   (This->dlg_type == ITEMDLG_TYPE_SAVE),
                                                   open_action);

        /* Add the proper extension */
        if(open_action == ONOPEN_OPEN)
        {
            static const WCHAR dotW[] = {'.',0};

            if(This->dlg_type == ITEMDLG_TYPE_SAVE)
            {
                WCHAR extbuf[MAX_PATH], *newext = NULL;

                if(This->filterspec_count)
                {
                    newext = FUNC32(extbuf, This->filterspecs[This->filetypeindex].pszSpec);
                }
                else if(This->default_ext)
                {
                    FUNC35(extbuf, dotW);
                    FUNC33(extbuf, This->default_ext);
                    newext = extbuf;
                }

                if(newext)
                {
                    WCHAR *ext = FUNC23(canon_filename);
                    if(FUNC34(ext, newext))
                        FUNC33(canon_filename, newext);
                }
            }
            else
            {
                if( !(This->options & FOS_NOVALIDATE) && (This->options & FOS_FILEMUSTEXIST) &&
                    !FUNC22(canon_filename))
                {
                    if(This->default_ext)
                    {
                        FUNC33(canon_filename, dotW);
                        FUNC33(canon_filename, This->default_ext);

                        if(!FUNC22(canon_filename))
                        {
                            FUNC7(This->dlg_hwnd, 0, IDS_FILENOTEXISTING);
                            open_action = ONOPEN_BROWSE;
                        }
                    }
                    else
                    {
                        FUNC7(This->dlg_hwnd, 0, IDS_FILENOTEXISTING);
                        open_action = ONOPEN_BROWSE;
                    }
                }
            }
        }

        pidla[i] = FUNC2(canon_filename);

        if(psf_parent && !(open_action == ONOPEN_BROWSE))
            FUNC15(psf_parent);

        fn_iter += (WCHAR)FUNC36(fn_iter) + 1;
    }

    FUNC12(FUNC10(), 0, files);
    FUNC14(current_folder);

    if((This->options & FOS_PICKFOLDERS) && open_action == ONOPEN_BROWSE)
        open_action = ONOPEN_OPEN; /* FIXME: Multiple folders? */

    switch(open_action)
    {
    case ONOPEN_SEARCH:
        FUNC9("Filtering not implemented.\n");
        break;

    case ONOPEN_BROWSE:
        hr = FUNC13(This->peb, (IUnknown*)psf_parent, SBSP_DEFBROWSER);
        if(FUNC6(hr))
            FUNC5("Failed to browse to directory: %08x\n", hr);

        FUNC15(psf_parent);
        break;

    case ONOPEN_OPEN:
        hr = FUNC25(&psf_desktop);
        if(FUNC27(hr))
        {
            if(This->psia_results)
            {
                FUNC18(This->psia_results);
                This->psia_results = NULL;
            }

            hr = FUNC24(NULL, psf_desktop, file_count, (PCUITEMID_CHILD_ARRAY)pidla,
                                        &This->psia_results);

            FUNC15(psf_desktop);

            if(FUNC6(hr))
                break;

            if(This->options & FOS_PICKFOLDERS)
            {
                SFGAOF attributes;
                hr = FUNC16(This->psia_results, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attributes);
                if(hr != S_OK)
                {
                    WCHAR buf[64];
                    FUNC20(COMDLG32_hInstance, IDS_INVALID_FOLDERNAME, buf, FUNC0(buf));

                    FUNC21(This->dlg_hwnd, buf, This->custom_title, MB_OK | MB_ICONEXCLAMATION);

                    FUNC18(This->psia_results);
                    This->psia_results = NULL;
                    break;
                }
            }

            if((This->options & FOS_OVERWRITEPROMPT) && This->dlg_type == ITEMDLG_TYPE_SAVE)
            {
                IShellItem *shellitem;

                for (i=0; FUNC27(hr) && i<file_count; i++)
                {
                    hr = FUNC17(This->psia_results, i, &shellitem);
                    if (FUNC27(hr))
                    {
                        if (FUNC37(shellitem))
                            hr = FUNC30(This, shellitem);

                        FUNC19(shellitem);
                    }
                }

                if (FUNC6(hr))
                    break;
            }

            if(FUNC29(This) == S_OK)
                ret = S_OK;
        }
        break;

    default:
        FUNC5("Failed.\n");
        break;
    }

    /* Clean up */
    for(i = 0; i < file_count; i++)
        FUNC14(pidla[i]);
    FUNC12(FUNC10(), 0, pidla);

    /* Success closes the dialog */
    return ret;
}