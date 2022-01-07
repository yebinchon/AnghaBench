
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bstr0 (char const*) ;
 char* mp_path_join_bstr (void*,int ,int ) ;

char *mp_path_join(void *talloc_ctx, const char *p1, const char *p2)
{
    return mp_path_join_bstr(talloc_ctx, bstr0(p1), bstr0(p2));
}
