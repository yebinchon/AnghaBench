
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdc; } ;
typedef int INT ;
typedef TYPE_1__ GpGraphics ;


 int DeleteObject (int ) ;
 int GetStockObject (int ) ;
 int NULL_PEN ;
 int RestoreDC (int ,int ) ;
 int SelectObject (int ,int ) ;

__attribute__((used)) static void restore_dc(GpGraphics *graphics, INT state)
{
    DeleteObject(SelectObject(graphics->hdc, GetStockObject(NULL_PEN)));
    RestoreDC(graphics->hdc, state);
}
