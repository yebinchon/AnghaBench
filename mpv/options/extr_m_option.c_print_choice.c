
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_opt_choice_alternatives {int name; } ;
typedef int m_option_t ;


 struct m_opt_choice_alternatives* get_choice (int const*,void const*,int*) ;
 char* talloc_asprintf (int *,char*,int) ;
 char* talloc_strdup (int *,int ) ;

__attribute__((used)) static char *print_choice(const m_option_t *opt, const void *val)
{
    int ival = 0;
    struct m_opt_choice_alternatives *alt = get_choice(opt, val, &ival);
    return alt ? talloc_strdup(((void*)0), alt->name)
               : talloc_asprintf(((void*)0), "%d", ival);
}
