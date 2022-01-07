
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Self; } ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ PROGRESS_INFO ;
typedef int LONG ;
typedef scalar_t__ HTHEME ;


 int GetThemeInt (scalar_t__,int ,int ,int ,int*) ;
 scalar_t__ GetWindowTheme (int ) ;
 int MulDiv (scalar_t__,int,int) ;
 int PBS_VERTICAL ;
 scalar_t__ SUCCEEDED (int ) ;
 int TMT_PROGRESSCHUNKSIZE ;

__attribute__((used)) static inline int get_led_size ( const PROGRESS_INFO *infoPtr, LONG style,
                                 const RECT* rect )
{
    HTHEME theme = GetWindowTheme (infoPtr->Self);
    if (theme)
    {
        int chunkSize;
        if (SUCCEEDED( GetThemeInt( theme, 0, 0, TMT_PROGRESSCHUNKSIZE, &chunkSize )))
            return chunkSize;
    }

    if (style & PBS_VERTICAL)
        return MulDiv (rect->right - rect->left, 2, 3);
    else
        return MulDiv (rect->bottom - rect->top, 2, 3);
}
