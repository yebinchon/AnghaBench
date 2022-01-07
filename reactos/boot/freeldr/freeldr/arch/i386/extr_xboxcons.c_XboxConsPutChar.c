
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;


 int CurrentAttr ;
 int CurrentCursorX ;
 int CurrentCursorY ;
 int XboxVideoGetDisplaySize (int*,int*,int*) ;
 int XboxVideoPutChar (int,int ,int,int ) ;

VOID
XboxConsPutChar(int c)
{
  ULONG Width;
  ULONG Height;
  ULONG Depth;

  if ('\r' == c)
    {
      CurrentCursorX = 0;
    }
  else if ('\n' == c)
    {
      CurrentCursorX = 0;
      CurrentCursorY++;
    }
  else if ('\t' == c)
    {
      CurrentCursorX = (CurrentCursorX + 8) & ~ 7;
    }
  else
    {
      XboxVideoPutChar(c, CurrentAttr, CurrentCursorX, CurrentCursorY);
      CurrentCursorX++;
    }
  XboxVideoGetDisplaySize(&Width, &Height, &Depth);
  if (Width <= CurrentCursorX)
    {
      CurrentCursorX = 0;
      CurrentCursorY++;
    }
}
