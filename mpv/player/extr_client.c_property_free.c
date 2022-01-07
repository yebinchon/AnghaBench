
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct observe_property {int async_value; scalar_t__ type; int value; int async_updating; } ;


 int assert (int) ;
 int m_option_free (scalar_t__,int *) ;

__attribute__((used)) static void property_free(void *p)
{
    struct observe_property *prop = p;

    assert(!prop->async_updating);

    if (prop->type) {
        m_option_free(prop->type, &prop->value);
        m_option_free(prop->type, &prop->async_value);
    }
}
