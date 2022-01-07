
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_2__ {int (* TextToColor ) (int ) ;} ;
typedef int PCSTR ;


 TYPE_1__ UiVtbl ;
 int stub1 (int ) ;

UCHAR UiTextToColor(PCSTR ColorText)
{
    return UiVtbl.TextToColor(ColorText);
}
