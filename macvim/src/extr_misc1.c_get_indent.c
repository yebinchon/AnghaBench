
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ b_p_ts; } ;


 int FALSE ;
 TYPE_1__* curbuf ;
 int get_indent_str (int ,int,int ) ;
 int ml_get_curline () ;

int
get_indent()
{
    return get_indent_str(ml_get_curline(), (int)curbuf->b_p_ts, FALSE);
}
