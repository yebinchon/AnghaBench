
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* page; TYPE_1__* wininfo; } ;
typedef TYPE_4__ WINHELP_WNDPAGE ;
struct TYPE_8__ {TYPE_2__* file; } ;
struct TYPE_7__ {char* lpszTitle; } ;
struct TYPE_6__ {char* caption; } ;



__attribute__((used)) static char* WINHELP_GetCaption(WINHELP_WNDPAGE* wpage)
{
    if (wpage->wininfo->caption[0]) return wpage->wininfo->caption;
    return wpage->page->file->lpszTitle;
}
