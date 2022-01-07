
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_rel_time {int type; int pos; } ;
typedef int m_option_t ;






 int fabs (int ) ;
 char* talloc_asprintf (int *,char*,char*,...) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static char *print_rel_time(const m_option_t *opt, const void *val)
{
    const struct m_rel_time *t = val;
    switch(t->type) {
    case 131:
        return talloc_asprintf(((void*)0), "%g", t->pos);
    case 128:
        return talloc_asprintf(((void*)0), "%s%g",
            (t->pos >= 0) ? "+" : "-", fabs(t->pos));
    case 130:
        return talloc_asprintf(((void*)0), "#%g", t->pos);
    case 129:
        return talloc_asprintf(((void*)0), "%g%%", t->pos);
    }
    return talloc_strdup(((void*)0), "none");
}
