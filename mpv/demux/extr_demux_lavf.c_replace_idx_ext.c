
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; char* start; } ;
typedef TYPE_1__ bstr ;


 int BSTR_P (int ) ;
 scalar_t__ bstr_endswith0 (TYPE_1__,char*) ;
 int bstr_splice (TYPE_1__,int ,int) ;
 char* talloc_asprintf (void*,char*,int ,char*) ;

__attribute__((used)) static char *replace_idx_ext(void *ta_ctx, bstr f)
{
    if (f.len < 4 || f.start[f.len - 4] != '.')
        return ((void*)0);
    char *ext = bstr_endswith0(f, "IDX") ? "SUB" : "sub";
    return talloc_asprintf(ta_ctx, "%.*s.%s", BSTR_P(bstr_splice(f, 0, -4)), ext);
}
