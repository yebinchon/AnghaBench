
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_channels {scalar_t__ num_chmaps; int * chmaps; scalar_t__ auto_safe; int set; } ;
typedef int m_option_t ;


 char* mp_chmap_to_str (int *) ;
 char* talloc_strdup (int *,char*) ;
 char* talloc_strdup_append (char*,char*) ;

__attribute__((used)) static char *print_channels(const m_option_t *opt, const void *val)
{
    const struct m_channels *ch = val;
    if (!ch->set)
        return talloc_strdup(((void*)0), "");
    if (ch->auto_safe)
        return talloc_strdup(((void*)0), "auto-safe");
    if (ch->num_chmaps > 0) {
        char *res = talloc_strdup(((void*)0), "");
        for (int n = 0; n < ch->num_chmaps; n++) {
            if (n > 0)
                res = talloc_strdup_append(res, ",");
            res = talloc_strdup_append(res, mp_chmap_to_str(&ch->chmaps[n]));
        }
        return res;
    }
    return talloc_strdup(((void*)0), "auto");
}
