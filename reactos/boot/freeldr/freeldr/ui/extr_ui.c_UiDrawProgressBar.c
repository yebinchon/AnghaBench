
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_2__ {int (* DrawProgressBar ) (int ,int ,int ,int ,int ,int ,int ) ;} ;
typedef int PCHAR ;


 TYPE_1__ UiVtbl ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ) ;

VOID UiDrawProgressBar(ULONG Left, ULONG Top, ULONG Right, ULONG Bottom, ULONG Position, ULONG Range, PCHAR ProgressText)
{
    UiVtbl.DrawProgressBar(Left, Top, Right, Bottom, Position, Range, ProgressText);
}
