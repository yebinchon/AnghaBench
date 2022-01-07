
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_option {int * type; int member_0; } ;
struct MPContext {int dummy; } ;


 int M_PROPERTY_GET_TYPE ;
 int m_option_type_choice ;
 int m_option_type_flag ;
 scalar_t__ mp_property_do (char*,int ,struct m_option*,struct MPContext*) ;

__attribute__((used)) static bool check_property_autorepeat(char *property, struct MPContext *mpctx)
{
    struct m_option prop = {0};
    if (mp_property_do(property, M_PROPERTY_GET_TYPE, &prop, mpctx) <= 0)
        return 1;


    if (prop.type == &m_option_type_flag || prop.type == &m_option_type_choice)
        return 0;

    return 1;
}
