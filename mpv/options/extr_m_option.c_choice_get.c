
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; int int64; int string; } ;
struct mpv_node {TYPE_1__ u; int format; } ;
struct m_opt_choice_alternatives {int name; } ;
typedef int m_option_t ;


 int MPV_FORMAT_FLAG ;
 int MPV_FORMAT_INT64 ;
 int MPV_FORMAT_STRING ;
 struct m_opt_choice_alternatives* get_choice (int const*,void*,int*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strtol (int ,char**,int) ;
 int talloc_strdup (void*,int ) ;

__attribute__((used)) static int choice_get(const m_option_t *opt, void *ta_parent,
                      struct mpv_node *dst, void *src)
{
    int ival = 0;
    struct m_opt_choice_alternatives *alt = get_choice(opt, src, &ival);

    if (alt) {
        char *end = ((void*)0);
        ival = strtol(alt->name, &end, 10);
        if (end && !end[0])
            alt = ((void*)0);
    }
    if (alt) {
        int b = -1;
        if (strcmp(alt->name, "yes") == 0) {
            b = 1;
        } else if (strcmp(alt->name, "no") == 0) {
            b = 0;
        }
        if (b >= 0) {
            dst->format = MPV_FORMAT_FLAG;
            dst->u.flag = b;
        } else {
            dst->format = MPV_FORMAT_STRING;
            dst->u.string = talloc_strdup(ta_parent, alt->name);
        }
    } else {
        dst->format = MPV_FORMAT_INT64;
        dst->u.int64 = ival;
    }
    return 1;
}
