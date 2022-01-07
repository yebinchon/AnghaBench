
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int web_browser; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ HHInfo ;
typedef int BOOL ;


 int AppendFullPathURL (int ,int *,int ) ;
 int FALSE ;
 int INTERNET_MAX_URL_LENGTH ;
 int SUCCEEDED (int ) ;
 int TRACE (char*,TYPE_1__*,int ,int ) ;
 int debugstr_w (int ) ;
 int navigate_url (TYPE_1__*,int *) ;

BOOL NavigateToChm(HHInfo *info, LPCWSTR file, LPCWSTR index)
{
    WCHAR buf[INTERNET_MAX_URL_LENGTH];

    TRACE("%p %s %s\n", info, debugstr_w(file), debugstr_w(index));

    if ((!info->web_browser) || !AppendFullPathURL(file, buf, index))
        return FALSE;

    return SUCCEEDED(navigate_url(info, buf));
}
