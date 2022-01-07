
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {void* bottom; void* right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_6__ {TYPE_1__ rcDesktop; } ;
typedef TYPE_2__* PPREVIEW_DATA ;
typedef void* INT ;


 int CalculateItemSize (TYPE_2__*) ;

__attribute__((used)) static VOID
OnSize(INT cx, INT cy, PPREVIEW_DATA pPreviewData)
{

    pPreviewData->rcDesktop.left = 0;
    pPreviewData->rcDesktop.top = 0;
    pPreviewData->rcDesktop.right = cx;
    pPreviewData->rcDesktop.bottom = cy;

    CalculateItemSize(pPreviewData);
}
