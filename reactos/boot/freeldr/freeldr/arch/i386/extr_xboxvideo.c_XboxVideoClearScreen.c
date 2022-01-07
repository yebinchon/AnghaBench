
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;
typedef int UCHAR ;


 int FALSE ;
 int XboxVideoAttrToColors (int ,int *,int *) ;
 int XboxVideoClearScreenColor (int ,int ) ;

VOID
XboxVideoClearScreen(UCHAR Attr)
{
  ULONG FgColor, BgColor;

  XboxVideoAttrToColors(Attr, &FgColor, &BgColor);

  XboxVideoClearScreenColor(BgColor, FALSE);
}
