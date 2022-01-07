
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int length_flags; } ;
struct TYPE_8__ {TYPE_3__ str; TYPE_3__* right; TYPE_3__* left; } ;
typedef TYPE_1__ jsstr_rope_t ;
typedef scalar_t__ WCHAR ;
struct TYPE_10__ {scalar_t__ const* buf; } ;


 int JSSTR_FLAG_FLAT ;
 scalar_t__* heap_alloc (int) ;
 TYPE_6__* jsstr_as_heap (TYPE_3__*) ;
 int jsstr_flush (TYPE_3__*,scalar_t__*) ;
 size_t jsstr_length (TYPE_3__*) ;
 int jsstr_release (TYPE_3__*) ;

const WCHAR *jsstr_rope_flatten(jsstr_rope_t *str)
{
    WCHAR *buf;

    buf = heap_alloc((jsstr_length(&str->str)+1) * sizeof(WCHAR));
    if(!buf)
        return ((void*)0);

    jsstr_flush(str->left, buf);
    jsstr_flush(str->right, buf+jsstr_length(str->left));
    buf[jsstr_length(&str->str)] = 0;


    jsstr_release(str->left);
    jsstr_release(str->right);
    str->str.length_flags |= JSSTR_FLAG_FLAT;
    return jsstr_as_heap(&str->str)->buf = buf;
}
