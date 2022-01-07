
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_color {int b; int g; int r; int a; } ;
typedef int m_option_t ;


 char* talloc_asprintf (int *,char*,int ,int ,int ,int ) ;

__attribute__((used)) static char *print_color(const m_option_t *opt, const void *val)
{
    const struct m_color *c = val;
    return talloc_asprintf(((void*)0), "#%02X%02X%02X%02X", c->a, c->r, c->g, c->b);
}
