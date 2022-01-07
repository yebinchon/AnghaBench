
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int UCHAR ;


 int XboxVideoAttrToColors (int ,int *,int *) ;
 int XboxVideoOutputChar (int,unsigned int,unsigned int,int ,int ) ;

VOID
XboxVideoPutChar(int Ch, UCHAR Attr, unsigned X, unsigned Y)
{
  ULONG FgColor, BgColor;

  XboxVideoAttrToColors(Attr, &FgColor, &BgColor);

  XboxVideoOutputChar(Ch, X, Y, FgColor, BgColor);
}
