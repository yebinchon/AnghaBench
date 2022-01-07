
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jsstr_t ;
struct TYPE_5__ {int * right; int * left; } ;
typedef TYPE_1__ jsstr_rope_t ;
typedef int WCHAR ;
struct TYPE_7__ {int buf; } ;
struct TYPE_6__ {int buf; } ;





 int assert (int ) ;
 TYPE_4__* jsstr_as_heap (int *) ;
 TYPE_3__* jsstr_as_inline (int *) ;
 TYPE_1__* jsstr_as_rope (int *) ;
 unsigned int jsstr_length (int *) ;
 int jsstr_tag (int *) ;
 int memcmp (int ,int const*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int jsstr_cmp_str(jsstr_t *jsstr, const WCHAR *str, unsigned len)
{
    int ret;

    switch(jsstr_tag(jsstr)) {
    case 129:
        ret = memcmp(jsstr_as_inline(jsstr)->buf, str, len*sizeof(WCHAR));
        return ret || jsstr_length(jsstr) == len ? ret : 1;
    case 130:
        ret = memcmp(jsstr_as_heap(jsstr)->buf, str, len*sizeof(WCHAR));
        return ret || jsstr_length(jsstr) == len ? ret : 1;
    case 128: {
        jsstr_rope_t *rope = jsstr_as_rope(jsstr);
        unsigned left_len = jsstr_length(rope->left);

        ret = jsstr_cmp_str(rope->left, str, min(len, left_len));
        if(ret || len <= left_len)
            return ret;
        return jsstr_cmp_str(rope->right, str+left_len, len-left_len);
    }
    }

    assert(0);
    return 0;
}
