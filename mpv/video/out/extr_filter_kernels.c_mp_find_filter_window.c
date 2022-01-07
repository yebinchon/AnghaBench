
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_window {scalar_t__ name; } ;


 struct filter_window* mp_filter_windows ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

const struct filter_window *mp_find_filter_window(const char *name)
{
    if (!name)
        return ((void*)0);
    for (const struct filter_window *w = mp_filter_windows; w->name; w++) {
        if (strcmp(w->name, name) == 0)
            return w;
    }
    return ((void*)0);
}
