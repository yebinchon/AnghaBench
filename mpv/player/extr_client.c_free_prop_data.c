
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_event_property {int data; int format; } ;
struct m_option {int dummy; } ;


 struct m_option* get_mp_type_get (int ) ;
 int m_option_free (struct m_option const*,int ) ;

__attribute__((used)) static void free_prop_data(void *ptr)
{
    struct mpv_event_property *prop = ptr;
    const struct m_option *type = get_mp_type_get(prop->format);
    m_option_free(type, prop->data);
}
