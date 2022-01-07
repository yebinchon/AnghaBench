
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_2__ {int (* TextToFillStyle ) (int ) ;} ;
typedef int PCSTR ;


 TYPE_1__ UiVtbl ;
 int stub1 (int ) ;

UCHAR UiTextToFillStyle(PCSTR FillStyleText)
{
    return UiVtbl.TextToFillStyle(FillStyleText);
}
