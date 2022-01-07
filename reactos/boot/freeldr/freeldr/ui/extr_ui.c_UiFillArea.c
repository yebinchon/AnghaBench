
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_2__ {int (* FillArea ) (int ,int ,int ,int ,int ,int ) ;} ;
typedef int CHAR ;


 TYPE_1__ UiVtbl ;
 int stub1 (int ,int ,int ,int ,int ,int ) ;

VOID UiFillArea(ULONG Left, ULONG Top, ULONG Right, ULONG Bottom, CHAR FillChar, UCHAR Attr )
{
    UiVtbl.FillArea(Left, Top, Right, Bottom, FillChar, Attr);
}
