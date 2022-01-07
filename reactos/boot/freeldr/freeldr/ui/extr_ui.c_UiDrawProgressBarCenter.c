
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_2__ {int (* DrawProgressBarCenter ) (int ,int ,int ) ;} ;
typedef int PCHAR ;


 TYPE_1__ UiVtbl ;
 int stub1 (int ,int ,int ) ;

VOID UiDrawProgressBarCenter(ULONG Position, ULONG Range, PCHAR ProgressText)
{
    UiVtbl.DrawProgressBarCenter(Position, Range, ProgressText);
}
