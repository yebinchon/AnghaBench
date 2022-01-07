
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;


 int js_throw (int *) ;
 int s_push_file (int *,char const*,int,void*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

__attribute__((used)) static void push_file_content(js_State *J, const char *fname, int limit)
{
    void *af = talloc_new(((void*)0));
    int r = s_push_file(J, fname, limit, af);
    talloc_free(af);
    if (r)
        js_throw(J);
}
