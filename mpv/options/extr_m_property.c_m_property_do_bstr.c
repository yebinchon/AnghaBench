
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct m_property {int dummy; } ;
typedef int name0 ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ bstr ;


 char* BSTR_P (TYPE_1__) ;
 int M_PROPERTY_UNKNOWN ;
 int m_property_do (int *,struct m_property const*,char*,int,void*,void*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int m_property_do_bstr(const struct m_property *prop_list, bstr name,
                              int action, void *arg, void *ctx)
{
    char name0[64];
    if (name.len >= sizeof(name0))
        return M_PROPERTY_UNKNOWN;
    snprintf(name0, sizeof(name0), "%.*s", BSTR_P(name));
    return m_property_do(((void*)0), prop_list, name0, action, arg, ctx);
}
