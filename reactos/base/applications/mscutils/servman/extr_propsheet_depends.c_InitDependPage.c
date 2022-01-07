
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {TYPE_2__* pDlgInfo; int hDependsImageList; } ;
struct TYPE_8__ {TYPE_1__* pService; } ;
struct TYPE_7__ {int lpServiceName; } ;
typedef TYPE_3__* PDEPENDDATA ;


 int GetSystemMetrics (int ) ;
 int IDI_DRIVER ;
 int IDI_NODEPENDS ;
 int IMAGE_ICON ;
 int InitImageList (int ,int ,int ,int ,int ) ;
 int SM_CXSMICON ;
 int TV1_Initialize (TYPE_3__*,int ) ;
 int TV2_Initialize (TYPE_3__*,int ) ;

__attribute__((used)) static VOID
InitDependPage(PDEPENDDATA pDependData)
{

    pDependData->hDependsImageList = InitImageList(IDI_NODEPENDS,
                                                   IDI_DRIVER,
                                                   GetSystemMetrics(SM_CXSMICON),
                                                   GetSystemMetrics(SM_CXSMICON),
                                                   IMAGE_ICON);


    TV1_Initialize(pDependData, pDependData->pDlgInfo->pService->lpServiceName);


    TV2_Initialize(pDependData, pDependData->pDlgInfo->pService->lpServiceName);
}
