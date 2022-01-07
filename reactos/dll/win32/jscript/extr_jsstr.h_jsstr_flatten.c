
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsstr_t ;
typedef int WCHAR ;
struct TYPE_4__ {int const* buf; } ;
struct TYPE_3__ {int const* buf; } ;


 TYPE_2__* jsstr_as_heap (int *) ;
 TYPE_1__* jsstr_as_inline (int *) ;
 int jsstr_as_rope (int *) ;
 scalar_t__ jsstr_is_heap (int *) ;
 scalar_t__ jsstr_is_inline (int *) ;
 int const* jsstr_rope_flatten (int ) ;

__attribute__((used)) static inline const WCHAR *jsstr_flatten(jsstr_t *str)
{
    return jsstr_is_inline(str) ? jsstr_as_inline(str)->buf
        : jsstr_is_heap(str) ? jsstr_as_heap(str)->buf
        : jsstr_rope_flatten(jsstr_as_rope(str));
}
