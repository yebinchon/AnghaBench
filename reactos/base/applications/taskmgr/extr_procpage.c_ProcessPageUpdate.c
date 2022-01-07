
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 scalar_t__ ListView_GetSelectedCount (int ) ;
 int TRUE ;
 int hProcessPageEndProcessButton ;
 int hProcessPageListCtrl ;

void ProcessPageUpdate(void)
{

    if (ListView_GetSelectedCount(hProcessPageListCtrl))
        EnableWindow(hProcessPageEndProcessButton, TRUE);
    else
        EnableWindow(hProcessPageEndProcessButton, FALSE);
}
