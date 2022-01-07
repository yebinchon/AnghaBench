
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsstr_t ;
struct TYPE_6__ {int buf; } ;
struct TYPE_5__ {int buf; } ;
struct TYPE_4__ {int * left; } ;


 char const* debugstr_wn (int ,int ) ;
 TYPE_3__* jsstr_as_heap (int *) ;
 TYPE_2__* jsstr_as_inline (int *) ;
 TYPE_1__* jsstr_as_rope (int *) ;
 scalar_t__ jsstr_is_heap (int *) ;
 scalar_t__ jsstr_is_inline (int *) ;
 int jsstr_length (int *) ;
 char const* wine_dbg_sprintf (char*,char const*) ;

const char *debugstr_jsstr(jsstr_t *str)
{
    return jsstr_is_inline(str) ? debugstr_wn(jsstr_as_inline(str)->buf, jsstr_length(str))
        : jsstr_is_heap(str) ? debugstr_wn(jsstr_as_heap(str)->buf, jsstr_length(str))
        : wine_dbg_sprintf("%s...", debugstr_jsstr(jsstr_as_rope(str)->left));
}
