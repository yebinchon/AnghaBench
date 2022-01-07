
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hwnd; } ;
struct TYPE_5__ {TYPE_1__ doc_host; } ;
typedef TYPE_2__ WebBrowser ;
typedef int LRESULT ;
typedef int LONG ;


 int SWP_NOACTIVATE ;
 int SWP_NOZORDER ;
 int SetWindowPos (scalar_t__,int *,int ,int ,int ,int ,int) ;

__attribute__((used)) static LRESULT resize_window(WebBrowser *This, LONG width, LONG height)
{
    if(This->doc_host.hwnd)
        SetWindowPos(This->doc_host.hwnd, ((void*)0), 0, 0, width, height,
                     SWP_NOZORDER | SWP_NOACTIVATE);

    return 0;
}
