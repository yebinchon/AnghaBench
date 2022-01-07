
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union m_option_value {TYPE_1__* type; int member_0; } ;
struct mp_log {int dummy; } ;
struct m_property {int dummy; } ;
struct m_option {TYPE_1__* type; int member_0; } ;
struct TYPE_2__ {int (* multiply ) (union m_option_value*,union m_option_value*,double) ;} ;


 int M_PROPERTY_GET ;
 int M_PROPERTY_GET_CONSTRICTED_TYPE ;
 int M_PROPERTY_NOT_IMPLEMENTED ;
 int M_PROPERTY_OK ;
 int M_PROPERTY_SET ;
 int assert (TYPE_1__*) ;
 int m_option_free (union m_option_value*,union m_option_value*) ;
 int m_property_do (struct mp_log*,struct m_property const*,char const*,int ,union m_option_value*,void*) ;
 int stub1 (union m_option_value*,union m_option_value*,double) ;

__attribute__((used)) static int m_property_multiply(struct mp_log *log,
                               const struct m_property *prop_list,
                               const char *property, double f, void *ctx)
{
    union m_option_value val = {0};
    struct m_option opt = {0};
    int r;

    r = m_property_do(log, prop_list, property, M_PROPERTY_GET_CONSTRICTED_TYPE,
                      &opt, ctx);
    if (r != M_PROPERTY_OK)
        return r;
    assert(opt.type);

    if (!opt.type->multiply)
        return M_PROPERTY_NOT_IMPLEMENTED;

    r = m_property_do(log, prop_list, property, M_PROPERTY_GET, &val, ctx);
    if (r != M_PROPERTY_OK)
        return r;
    opt.type->multiply(&opt, &val, f);
    r = m_property_do(log, prop_list, property, M_PROPERTY_SET, &val, ctx);
    m_option_free(&opt, &val);
    return r;
}
