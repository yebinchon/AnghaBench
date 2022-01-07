
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_family_t ;


 int AF_INET ;
 int strchr (char*,char) ;
 scalar_t__ streq (char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static sa_family_t parse_listener_ipv4(char *listener, char **node, char **port)
{
    char *colon = strrchr(listener, ':');
    if (!colon) {
        *port = "8080";
        if (!strchr(listener, '.')) {

            *node = "0.0.0.0";
        } else {

            *node = listener;
        }
    } else {




        *colon = '\0';
        *node = listener;
        *port = colon + 1;

        if (streq(*node, "*")) {

            *node = "0.0.0.0";
        }
    }

    return AF_INET;
}
