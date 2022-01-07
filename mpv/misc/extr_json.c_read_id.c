
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* string; } ;
struct mpv_node {TYPE_1__ u; int format; } ;


 int MPV_FORMAT_STRING ;
 scalar_t__ mp_isalnum (char) ;
 int mp_isalpha (char) ;
 char* talloc_strndup (void*,char*,int) ;

__attribute__((used)) static int read_id(void *ta_parent, struct mpv_node *dst, char **src)
{
    char *start = *src;
    if (!mp_isalpha(**src) && **src != '_')
        return -1;
    while (mp_isalnum(**src) || **src == '_')
        *src += 1;
    if (**src == ' ') {
        **src = '\0';
        *src += 1;
    } else {
        start = talloc_strndup(ta_parent, start, *src - start);
    }
    dst->format = MPV_FORMAT_STRING;
    dst->u.string = start;
    return 0;
}
