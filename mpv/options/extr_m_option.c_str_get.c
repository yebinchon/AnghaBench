
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; } ;
struct mpv_node {TYPE_1__ u; int format; } ;
typedef int m_option_t ;


 int MPV_FORMAT_STRING ;
 char* VAL (void*) ;
 int talloc_strdup (void*,char*) ;

__attribute__((used)) static int str_get(const m_option_t *opt, void *ta_parent,
                   struct mpv_node *dst, void *src)
{
    dst->format = MPV_FORMAT_STRING;
    dst->u.string = talloc_strdup(ta_parent, VAL(src) ? VAL(src) : "");
    return 1;
}
