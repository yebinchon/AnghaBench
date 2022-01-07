
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t curFontCollection; int ** fontCollection; } ;
typedef int GpFontCollection ;


 TYPE_1__ gdip ;

GpFontCollection*
nk_gdip_getCurFontCollection(){
    return gdip.fontCollection[gdip.curFontCollection];
}
