
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_param {int member_1; int member_0; } ;
struct playlist_entry {int num_params; int params; } ;
typedef int bstr ;


 int MP_TARRAY_APPEND (struct playlist_entry*,int ,int ,struct playlist_param) ;
 int bstrdup (struct playlist_entry*,int ) ;

void playlist_entry_add_param(struct playlist_entry *e, bstr name, bstr value)
{
    struct playlist_param p = {bstrdup(e, name), bstrdup(e, value)};
    MP_TARRAY_APPEND(e, e->params, e->num_params, p);
}
