
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* event_get_version () ;
 int fprintf (int ,char*,char*) ;
 int isdigit (char const) ;
 int stderr ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static bool sanitycheck(void) {

    const char *ever = event_get_version();
    if (ever != ((void*)0)) {
        if (strncmp(ever, "1.", 2) == 0) {

            if (('0' <= ever[2] && ever[2] < '3') && !isdigit(ever[3])) {
                fprintf(stderr, "You are using libevent %s.\nPlease upgrade to"
                        " a more recent version (1.3 or newer)\n",
                        event_get_version());
                return 0;
            }
        }
    }

    return 1;
}
