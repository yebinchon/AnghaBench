
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_user_filter {scalar_t__ label; } ;
struct chain {int num_user_filters; struct mp_user_filter** user_filters; } ;


 scalar_t__ strcmp (char const*,scalar_t__) ;

__attribute__((used)) static struct mp_user_filter *find_by_label(struct chain *p, const char *label)
{
    for (int n = 0; n < p->num_user_filters; n++) {
        struct mp_user_filter *u = p->user_filters[n];
        if (label && u->label && strcmp(label, u->label) == 0)
            return u;
    }
    return ((void*)0);
}
