
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m_option_t ;


 scalar_t__ VAL (void const*) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static char *print_flag(const m_option_t *opt, const void *val)
{
    return talloc_strdup(((void*)0), VAL(val) ? "yes" : "no");
}
