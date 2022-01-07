
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_2__ {int (* DrawShadow ) (int ,int ,int ,int ) ;} ;


 TYPE_1__ UiVtbl ;
 int stub1 (int ,int ,int ,int ) ;

VOID UiDrawShadow(ULONG Left, ULONG Top, ULONG Right, ULONG Bottom)
{
    UiVtbl.DrawShadow(Left, Top, Right, Bottom);
}
