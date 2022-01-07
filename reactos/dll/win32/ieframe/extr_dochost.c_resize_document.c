
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ view; } ;
struct TYPE_6__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int LRESULT ;
typedef int LONG ;
typedef TYPE_2__ DocHost ;


 int IOleDocumentView_SetRect (scalar_t__,TYPE_1__*) ;
 int TRACE (char*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static LRESULT resize_document(DocHost *This, LONG width, LONG height)
{
    RECT rect = {0, 0, width, height};

    TRACE("(%p)->(%d %d)\n", This, width, height);

    if(This->view)
        IOleDocumentView_SetRect(This->view, &rect);

    return 0;
}
