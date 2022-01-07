
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_10__ {int chm_index; int chm_file; } ;
struct TYPE_9__ {TYPE_1__* pCHMInfo; } ;
struct TYPE_8__ {int szFile; } ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef TYPE_2__ HHInfo ;
typedef TYPE_3__ ChmPath ;
typedef int BOOL ;


 int NavigateToChm (TYPE_2__*,int ,int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SetChmPath (TYPE_3__*,int ,int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;
 int heap_free (int ) ;
 int navigate_url (TYPE_2__*,int ) ;
 scalar_t__ wcsstr (int ,char const*) ;

BOOL NavigateToUrl(HHInfo *info, LPCWSTR surl)
{
    ChmPath chm_path;
    BOOL ret;
    HRESULT hres;

    static const WCHAR url_indicator[] = {':', '/', '/', 0};

    TRACE("%s\n", debugstr_w(surl));

    if (wcsstr(surl, url_indicator)) {
        hres = navigate_url(info, surl);
        if(SUCCEEDED(hres))
            return TRUE;
    }

    SetChmPath(&chm_path, info->pCHMInfo->szFile, surl);
    ret = NavigateToChm(info, chm_path.chm_file, chm_path.chm_index);

    heap_free(chm_path.chm_file);
    heap_free(chm_path.chm_index);

    return ret;
}
