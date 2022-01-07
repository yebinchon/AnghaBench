
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_2__ {int (* DrawBox ) (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;} ;
typedef int BOOLEAN ;


 TYPE_1__ UiVtbl ;
 int stub1 (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

VOID UiDrawBox(ULONG Left, ULONG Top, ULONG Right, ULONG Bottom, UCHAR VertStyle, UCHAR HorzStyle, BOOLEAN Fill, BOOLEAN Shadow, UCHAR Attr)
{
    UiVtbl.DrawBox(Left, Top, Right, Bottom, VertStyle, HorzStyle, Fill, Shadow, Attr);
}
