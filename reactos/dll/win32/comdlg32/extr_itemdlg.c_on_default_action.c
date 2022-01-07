
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_8__ {int options; scalar_t__ dlg_type; size_t filetypeindex; char const* default_ext; int * psia_results; int custom_title; int dlg_hwnd; int peb; TYPE_1__* filterspecs; scalar_t__ filterspec_count; scalar_t__ psi_folder; } ;
struct TYPE_7__ {int pszSpec; } ;
typedef int SFGAOF ;
typedef int PCUITEMID_CHILD_ARRAY ;
typedef int * LPWSTR ;
typedef int LPITEMIDLIST ;
typedef int IUnknown ;
typedef int IShellItem ;
typedef int IShellFolder ;
typedef int HRESULT ;
typedef TYPE_2__ FileDialogImpl ;


 int ARRAY_SIZE (char*) ;
 int COMDLG32_GetCanonicalPath (int ,int *,char*) ;
 int COMDLG32_SHSimpleIDListFromPathAW (char*) ;
 int COMDLG32_SplitFileNames (int *,int,int **,int*) ;
 int COMDLG32_hInstance ;
 int CoTaskMemFree (int *) ;
 int ERR (char*,...) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FILEDLG95_OnOpenMessage (int ,int ,int ) ;
 int FILEDLG95_ValidatePathAction (char*,int **,int ,int,int,int) ;
 int FIXME (char*) ;
 int FOS_FILEMUSTEXIST ;
 int FOS_NOVALIDATE ;
 int FOS_OVERWRITEPROMPT ;
 int FOS_PICKFOLDERS ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int IDS_FILENOTEXISTING ;
 int IDS_INVALID_FOLDERNAME ;
 int IExplorerBrowser_BrowseToObject (int ,int *,int ) ;
 int ILFree (int ) ;
 int IShellFolder_Release (int *) ;
 int IShellItemArray_GetAttributes (int *,int ,int ,int *) ;
 int IShellItemArray_GetItemAt (int *,int,int **) ;
 int IShellItemArray_Release (int *) ;
 int IShellItem_Release (int *) ;
 scalar_t__ ITEMDLG_TYPE_SAVE ;
 int LoadStringW (int ,int ,char*,int ) ;
 int MAX_PATH ;
 int MB_ICONEXCLAMATION ;
 int MB_OK ;
 int MessageBoxW (int ,char*,int ,int) ;



 int PathFileExistsW (char*) ;
 char* PathFindExtensionW (char*) ;
 int SBSP_DEFBROWSER ;
 int SFGAO_FOLDER ;
 int SHCreateShellItemArray (int *,int *,int,int ,int **) ;
 int SHGetDesktopFolder (int **) ;
 int SHGetIDListFromObject (int *,int *) ;
 int SIATTRIBFLAGS_AND ;
 int SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,int) ;
 int events_OnFileOk (TYPE_2__*) ;
 int events_OnOverwrite (TYPE_2__*,int *) ;
 int get_file_name (TYPE_2__*,int **) ;
 char* get_first_ext_from_spec (char*,int ) ;
 int lstrcatW (char*,char const*) ;
 scalar_t__ lstrcmpW (char*,char*) ;
 int lstrcpyW (char*,char const*) ;
 scalar_t__ lstrlenW (int *) ;
 int shell_item_exists (int *) ;

__attribute__((used)) static HRESULT on_default_action(FileDialogImpl *This)
{
    IShellFolder *psf_parent, *psf_desktop;
    LPITEMIDLIST *pidla;
    LPITEMIDLIST current_folder;
    LPWSTR fn_iter, files = ((void*)0), tmp_files;
    UINT file_count = 0, len, i;
    int open_action;
    HRESULT hr, ret = E_FAIL;

    len = get_file_name(This, &tmp_files);
    if(len)
    {
        UINT size_used;
        file_count = COMDLG32_SplitFileNames(tmp_files, len, &files, &size_used);
        CoTaskMemFree(tmp_files);
    }
    if(!file_count) return E_FAIL;

    hr = SHGetIDListFromObject((IUnknown*)This->psi_folder, &current_folder);
    if(FAILED(hr))
    {
        ERR("Failed to get pidl for current directory.\n");
        HeapFree(GetProcessHeap(), 0, files);
        return hr;
    }

    TRACE("Acting on %d file(s).\n", file_count);

    pidla = HeapAlloc(GetProcessHeap(), 0, sizeof(LPITEMIDLIST) * file_count);
    open_action = 129;
    fn_iter = files;

    for(i = 0; i < file_count && open_action == 129; i++)
    {
        WCHAR canon_filename[MAX_PATH];
        psf_parent = ((void*)0);

        COMDLG32_GetCanonicalPath(current_folder, fn_iter, canon_filename);

        if( (This->options & FOS_NOVALIDATE) &&
            !(This->options & FOS_FILEMUSTEXIST) )
            open_action = 129;
        else
            open_action = 130;

        open_action = FILEDLG95_ValidatePathAction(canon_filename, &psf_parent, This->dlg_hwnd,
                                                   This->options & ~FOS_FILEMUSTEXIST,
                                                   (This->dlg_type == ITEMDLG_TYPE_SAVE),
                                                   open_action);


        if(open_action == 129)
        {
            static const WCHAR dotW[] = {'.',0};

            if(This->dlg_type == ITEMDLG_TYPE_SAVE)
            {
                WCHAR extbuf[MAX_PATH], *newext = ((void*)0);

                if(This->filterspec_count)
                {
                    newext = get_first_ext_from_spec(extbuf, This->filterspecs[This->filetypeindex].pszSpec);
                }
                else if(This->default_ext)
                {
                    lstrcpyW(extbuf, dotW);
                    lstrcatW(extbuf, This->default_ext);
                    newext = extbuf;
                }

                if(newext)
                {
                    WCHAR *ext = PathFindExtensionW(canon_filename);
                    if(lstrcmpW(ext, newext))
                        lstrcatW(canon_filename, newext);
                }
            }
            else
            {
                if( !(This->options & FOS_NOVALIDATE) && (This->options & FOS_FILEMUSTEXIST) &&
                    !PathFileExistsW(canon_filename))
                {
                    if(This->default_ext)
                    {
                        lstrcatW(canon_filename, dotW);
                        lstrcatW(canon_filename, This->default_ext);

                        if(!PathFileExistsW(canon_filename))
                        {
                            FILEDLG95_OnOpenMessage(This->dlg_hwnd, 0, IDS_FILENOTEXISTING);
                            open_action = 130;
                        }
                    }
                    else
                    {
                        FILEDLG95_OnOpenMessage(This->dlg_hwnd, 0, IDS_FILENOTEXISTING);
                        open_action = 130;
                    }
                }
            }
        }

        pidla[i] = COMDLG32_SHSimpleIDListFromPathAW(canon_filename);

        if(psf_parent && !(open_action == 130))
            IShellFolder_Release(psf_parent);

        fn_iter += (WCHAR)lstrlenW(fn_iter) + 1;
    }

    HeapFree(GetProcessHeap(), 0, files);
    ILFree(current_folder);

    if((This->options & FOS_PICKFOLDERS) && open_action == 130)
        open_action = 129;

    switch(open_action)
    {
    case 128:
        FIXME("Filtering not implemented.\n");
        break;

    case 130:
        hr = IExplorerBrowser_BrowseToObject(This->peb, (IUnknown*)psf_parent, SBSP_DEFBROWSER);
        if(FAILED(hr))
            ERR("Failed to browse to directory: %08x\n", hr);

        IShellFolder_Release(psf_parent);
        break;

    case 129:
        hr = SHGetDesktopFolder(&psf_desktop);
        if(SUCCEEDED(hr))
        {
            if(This->psia_results)
            {
                IShellItemArray_Release(This->psia_results);
                This->psia_results = ((void*)0);
            }

            hr = SHCreateShellItemArray(((void*)0), psf_desktop, file_count, (PCUITEMID_CHILD_ARRAY)pidla,
                                        &This->psia_results);

            IShellFolder_Release(psf_desktop);

            if(FAILED(hr))
                break;

            if(This->options & FOS_PICKFOLDERS)
            {
                SFGAOF attributes;
                hr = IShellItemArray_GetAttributes(This->psia_results, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attributes);
                if(hr != S_OK)
                {
                    WCHAR buf[64];
                    LoadStringW(COMDLG32_hInstance, IDS_INVALID_FOLDERNAME, buf, ARRAY_SIZE(buf));

                    MessageBoxW(This->dlg_hwnd, buf, This->custom_title, MB_OK | MB_ICONEXCLAMATION);

                    IShellItemArray_Release(This->psia_results);
                    This->psia_results = ((void*)0);
                    break;
                }
            }

            if((This->options & FOS_OVERWRITEPROMPT) && This->dlg_type == ITEMDLG_TYPE_SAVE)
            {
                IShellItem *shellitem;

                for (i=0; SUCCEEDED(hr) && i<file_count; i++)
                {
                    hr = IShellItemArray_GetItemAt(This->psia_results, i, &shellitem);
                    if (SUCCEEDED(hr))
                    {
                        if (shell_item_exists(shellitem))
                            hr = events_OnOverwrite(This, shellitem);

                        IShellItem_Release(shellitem);
                    }
                }

                if (FAILED(hr))
                    break;
            }

            if(events_OnFileOk(This) == S_OK)
                ret = S_OK;
        }
        break;

    default:
        ERR("Failed.\n");
        break;
    }


    for(i = 0; i < file_count; i++)
        ILFree(pidla[i]);
    HeapFree(GetProcessHeap(), 0, pidla);


    return ret;
}
