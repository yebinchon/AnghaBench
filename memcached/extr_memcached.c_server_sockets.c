
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum network_transport { ____Placeholder_network_transport } network_transport ;
struct TYPE_2__ {int ssl_enabled; char* inter; } ;
typedef int FILE ;


 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int safe_strtol (char*,int*) ;
 int server_socket (char*,int,int,int *,int) ;
 TYPE_1__ settings ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,scalar_t__) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static int server_sockets(int port, enum network_transport transport,
                          FILE *portnumber_file) {
    bool ssl_enabled = 0;






    if (settings.inter == ((void*)0)) {
        return server_socket(settings.inter, port, transport, portnumber_file, ssl_enabled);
    } else {

        char *b;
        int ret = 0;
        char *list = strdup(settings.inter);

        if (list == ((void*)0)) {
            fprintf(stderr, "Failed to allocate memory for parsing server interface string\n");
            return 1;
        }
        for (char *p = strtok_r(list, ";,", &b);
            p != ((void*)0);
            p = strtok_r(((void*)0), ";,", &b)) {
            int the_port = port;
            char *h = ((void*)0);
            if (*p == '[') {


                char *e = strchr(p, ']');
                if (e == ((void*)0)) {
                    fprintf(stderr, "Invalid IPV6 address: \"%s\"", p);
                    free(list);
                    return 1;
                }
                h = ++p;
                *e = '\0';
                p = ++e;
            }

            char *s = strchr(p, ':');
            if (s != ((void*)0)) {




                if (strchr(s + 1, ':') == ((void*)0) || h != ((void*)0)) {
                    *s = '\0';
                    ++s;
                    if (!safe_strtol(s, &the_port)) {
                        fprintf(stderr, "Invalid port number: \"%s\"", s);
                        free(list);
                        return 1;
                    }
                }
            }

            if (h != ((void*)0))
                p = h;

            if (strcmp(p, "*") == 0) {
                p = ((void*)0);
            }
            ret |= server_socket(p, the_port, transport, portnumber_file, ssl_enabled);
        }
        free(list);
        return ret;
    }
}
