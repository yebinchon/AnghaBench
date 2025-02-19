
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsstr_t ;
struct TYPE_4__ {unsigned int depth; int str; int * right; int * left; } ;
typedef TYPE_1__ jsstr_rope_t ;
typedef int WCHAR ;
struct TYPE_5__ {unsigned int depth; } ;


 unsigned int JSSTR_MAX_LENGTH ;
 int JSSTR_MAX_ROPE_DEPTH ;
 int JSSTR_ROPE ;
 unsigned int JSSTR_SHORT_STRING_LENGTH ;
 TYPE_1__* heap_alloc (int) ;
 int * jsstr_addref (int *) ;
 int * jsstr_alloc_buf (unsigned int,int **) ;
 TYPE_2__* jsstr_as_rope (int *) ;
 int jsstr_flush (int *,int *) ;
 int jsstr_init (int *,unsigned int,int ) ;
 scalar_t__ jsstr_is_rope (int *) ;
 unsigned int jsstr_length (int *) ;

jsstr_t *jsstr_concat(jsstr_t *str1, jsstr_t *str2)
{
    unsigned len1, len2;
    jsstr_t *ret;
    WCHAR *ptr;

    len1 = jsstr_length(str1);
    if(!len1)
        return jsstr_addref(str2);

    len2 = jsstr_length(str2);
    if(!len2)
        return jsstr_addref(str1);

    if(len1 + len2 >= JSSTR_SHORT_STRING_LENGTH) {
        unsigned depth, depth2;
        jsstr_rope_t *rope;

        depth = jsstr_is_rope(str1) ? jsstr_as_rope(str1)->depth : 0;
        depth2 = jsstr_is_rope(str2) ? jsstr_as_rope(str2)->depth : 0;
        if(depth2 > depth)
            depth = depth2;

        if(depth++ < JSSTR_MAX_ROPE_DEPTH) {
            if(len1+len2 > JSSTR_MAX_LENGTH)
                return ((void*)0);

            rope = heap_alloc(sizeof(*rope));
            if(!rope)
                return ((void*)0);

            jsstr_init(&rope->str, len1+len2, JSSTR_ROPE);
            rope->left = jsstr_addref(str1);
            rope->right = jsstr_addref(str2);
            rope->depth = depth;
            return &rope->str;
        }
    }

    ret = jsstr_alloc_buf(len1+len2, &ptr);
    if(!ret)
        return ((void*)0);

    jsstr_flush(str1, ptr);
    jsstr_flush(str2, ptr+len1);
    return ret;

}
