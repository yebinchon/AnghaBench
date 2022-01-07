
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memory_dc; int height; int width; } ;
typedef int HDC ;


 int BitBlt (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SRCCOPY ;
 TYPE_1__ gdi ;

__attribute__((used)) static void
nk_gdi_blit(HDC dc)
{
    BitBlt(dc, 0, 0, gdi.width, gdi.height, gdi.memory_dc, 0, 0, SRCCOPY);

}
