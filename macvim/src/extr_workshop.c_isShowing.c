
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w_topline; int w_botline; } ;
typedef int Boolean ;


 TYPE_1__* curwin ;

__attribute__((used)) static Boolean
isShowing(
 int lnum)
{
    return lnum >= curwin->w_topline && lnum < curwin->w_botline;
}
