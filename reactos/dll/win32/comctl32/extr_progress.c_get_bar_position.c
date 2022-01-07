
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ MinVal; scalar_t__ MaxVal; } ;
typedef int RECT ;
typedef TYPE_1__ PROGRESS_INFO ;
typedef int LONG ;
typedef scalar_t__ INT ;


 int MulDiv (scalar_t__,int ,scalar_t__) ;
 int get_bar_size (int ,int const*) ;

__attribute__((used)) static inline int get_bar_position( const PROGRESS_INFO *infoPtr, LONG style,
                                    const RECT* rect, INT value )
{
    return MulDiv (value - infoPtr->MinVal, get_bar_size (style, rect),
                      infoPtr->MaxVal - infoPtr->MinVal);
}
