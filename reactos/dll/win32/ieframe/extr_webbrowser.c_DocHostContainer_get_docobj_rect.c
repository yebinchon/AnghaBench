
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_hwnd; } ;
typedef int RECT ;
typedef TYPE_1__ DocHost ;


 int GetClientRect (int ,int *) ;

__attribute__((used)) static void DocHostContainer_get_docobj_rect(DocHost *This, RECT *rc)
{
    GetClientRect(This->frame_hwnd, rc);
}
