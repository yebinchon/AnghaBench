
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int* PULONG ;


 int CHAR_HEIGHT ;
 int CHAR_WIDTH ;
 int ScreenHeight ;
 int ScreenWidth ;
 int TOP_BOTTOM_LINES ;

VOID
XboxVideoGetDisplaySize(PULONG Width, PULONG Height, PULONG Depth)
{
  *Width = ScreenWidth / CHAR_WIDTH;
  *Height = (ScreenHeight - 2 * TOP_BOTTOM_LINES) / CHAR_HEIGHT;
  *Depth = 0;
}
