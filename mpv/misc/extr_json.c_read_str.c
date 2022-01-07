
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* string; } ;
struct mpv_node {TYPE_1__ u; int format; } ;
struct TYPE_7__ {char* start; int member_0; } ;
typedef TYPE_2__ bstr ;


 int MPV_FORMAT_STRING ;
 TYPE_2__ bstr0 (char*) ;
 int eat_c (char**,char) ;
 int mp_append_escaped_string (void*,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int read_str(void *ta_parent, struct mpv_node *dst, char **src)
{
    if (!eat_c(src, '"'))
        return -1;
    char *str = *src;
    char *cur = str;
    bool has_escapes = 0;
    while (cur[0] && cur[0] != '"') {
        if (cur[0] == '\\') {
            has_escapes = 1;

            if (cur[1] == '"' || cur[1] == '\\')
                cur++;
        }
        cur++;
    }
    if (cur[0] != '"')
        return -1;


    cur[0] = '\0';
    *src = cur + 1;
    if (has_escapes) {
        bstr unescaped = {0};
        bstr r = bstr0(str);
        if (!mp_append_escaped_string(ta_parent, &unescaped, &r))
            return -1;
        str = unescaped.start;
    }
    dst->format = MPV_FORMAT_STRING;
    dst->u.string = str;
    return 0;
}
