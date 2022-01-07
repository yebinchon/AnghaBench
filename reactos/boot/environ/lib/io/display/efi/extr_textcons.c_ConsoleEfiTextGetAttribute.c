
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int BL_COLOR ;


 int ConsoleEfiTextGetEfiColorBackground (int ) ;
 int ConsoleEfiTextGetEfiColorForeground (int ) ;

ULONG
ConsoleEfiTextGetAttribute (
    BL_COLOR BgColor,
    BL_COLOR FgColor
    )
{

    return ConsoleEfiTextGetEfiColorBackground(BgColor) |
           ConsoleEfiTextGetEfiColorForeground(FgColor);
}
