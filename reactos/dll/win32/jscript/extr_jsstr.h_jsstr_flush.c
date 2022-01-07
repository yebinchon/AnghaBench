
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jsstr_t ;
struct TYPE_5__ {int * left; int * right; } ;
typedef TYPE_1__ jsstr_rope_t ;
typedef int WCHAR ;
struct TYPE_7__ {int buf; } ;
struct TYPE_6__ {int buf; } ;


 TYPE_4__* jsstr_as_heap (int *) ;
 TYPE_3__* jsstr_as_inline (int *) ;
 TYPE_1__* jsstr_as_rope (int *) ;
 scalar_t__ jsstr_is_heap (int *) ;
 scalar_t__ jsstr_is_inline (int *) ;
 int jsstr_length (int *) ;
 int memcpy (int *,int ,unsigned int) ;

__attribute__((used)) static inline unsigned jsstr_flush(jsstr_t *str, WCHAR *buf)
{
    unsigned len = jsstr_length(str);
    if(jsstr_is_inline(str)) {
        memcpy(buf, jsstr_as_inline(str)->buf, len*sizeof(WCHAR));
    }else if(jsstr_is_heap(str)) {
        memcpy(buf, jsstr_as_heap(str)->buf, len*sizeof(WCHAR));
    }else {
        jsstr_rope_t *rope = jsstr_as_rope(str);
        jsstr_flush(rope->left, buf);
        jsstr_flush(rope->right, buf+jsstr_length(rope->left));
    }
    return len;
}
