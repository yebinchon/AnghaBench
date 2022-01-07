
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_2__ {int (* DrawText2 ) (int ,int ,int ,int ,int ) ;} ;
typedef int PCSTR ;


 TYPE_1__ UiVtbl ;
 int stub1 (int ,int ,int ,int ,int ) ;

VOID UiDrawText2(ULONG X, ULONG Y, ULONG MaxNumChars, PCSTR Text, UCHAR Attr)
{
    UiVtbl.DrawText2(X, Y, MaxNumChars, Text, Attr);
}
