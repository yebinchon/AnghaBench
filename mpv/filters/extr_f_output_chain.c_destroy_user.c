
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_user_filter {int args; } ;
struct mp_filter {struct mp_user_filter* priv; } ;
struct m_option {int * type; } ;


 int m_option_free (struct m_option*,int *) ;
 int m_option_type_obj_settings_list ;
 int mp_filter_free_children (struct mp_filter*) ;

__attribute__((used)) static void destroy_user(struct mp_filter *f)
{
    struct mp_user_filter *u = f->priv;

    struct m_option dummy = {.type = &m_option_type_obj_settings_list};
    m_option_free(&dummy, &u->args);

    mp_filter_free_children(f);
}
