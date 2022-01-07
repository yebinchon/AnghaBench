
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsstr_t ;
struct TYPE_4__ {int right; int left; } ;
typedef TYPE_1__ jsstr_rope_t ;
struct TYPE_5__ {int * buf; } ;





 int heap_free (int *) ;
 TYPE_3__* jsstr_as_heap (int *) ;
 TYPE_1__* jsstr_as_rope (int *) ;
 int jsstr_release (int ) ;
 int jsstr_tag (int *) ;

void jsstr_free(jsstr_t *str)
{
    switch(jsstr_tag(str)) {
    case 130:
        heap_free(jsstr_as_heap(str)->buf);
        break;
    case 128: {
        jsstr_rope_t *rope = jsstr_as_rope(str);
        jsstr_release(rope->left);
        jsstr_release(rope->right);
        break;
    }
    case 129:
        break;
    }

    heap_free(str);
}
