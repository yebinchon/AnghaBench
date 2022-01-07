
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int ngx_int_t ;
typedef int name ;


 int atoi (char*) ;
 scalar_t__ ngx_strstr (char*,char*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_parse_index(char type, u_char *args)
{
    u_char *p, c;
    static u_char name[] = "xindex=";

    name[0] = (u_char) type;

    for ( ;; ) {
        p = (u_char *) ngx_strstr(args, name);
        if (p == ((void*)0)) {
            return 0;
        }

        if (p != args) {
            c = *(p - 1);
            if (c != '?' && c != '&') {
                args = p + 1;
                continue;
            }
        }

        return atoi((char *) p + (sizeof(name) - 1));
    }
}
