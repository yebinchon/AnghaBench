
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int MP_TARRAY_APPEND (void*,char**,int,int ) ;
 char* js_nextiterator (int *,int) ;
 int js_pop (int *,int) ;
 int js_pushiterator (int *,int,int) ;
 char** talloc_new (void*) ;
 int talloc_strdup (void*,char const*) ;

__attribute__((used)) static int get_obj_properties(void *ta_ctx, char ***keys, js_State *J, int idx)
{
    int length = 0;
    js_pushiterator(J, idx, 1);

    *keys = talloc_new(ta_ctx);
    const char *name;
    while ((name = js_nextiterator(J, -1)))
        MP_TARRAY_APPEND(ta_ctx, *keys, length, talloc_strdup(ta_ctx, name));

    js_pop(J, 1);
    return length;
}
