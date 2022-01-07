
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct m_property {int name; } ;


 int mp_info (struct mp_log*,char*,...) ;

void m_properties_print_help_list(struct mp_log *log,
                                  const struct m_property *list)
{
    int count = 0;

    mp_info(log, "Name\n\n");
    for (int i = 0; list[i].name; i++) {
        const struct m_property *p = &list[i];
        mp_info(log, " %s\n", p->name);
        count++;
    }
    mp_info(log, "\nTotal: %d properties\n", count);
}
