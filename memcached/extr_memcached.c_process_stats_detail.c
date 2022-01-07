
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int conn ;
struct TYPE_2__ {int detail_enabled; } ;


 int assert (int ) ;
 int out_string (int *,char*) ;
 TYPE_1__ settings ;
 char* stats_prefix_dump (int*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int write_and_free (int *,char*,int) ;

__attribute__((used)) inline static void process_stats_detail(conn *c, const char *command) {
    assert(c != ((void*)0));

    if (strcmp(command, "on") == 0) {
        settings.detail_enabled = 1;
        out_string(c, "OK");
    }
    else if (strcmp(command, "off") == 0) {
        settings.detail_enabled = 0;
        out_string(c, "OK");
    }
    else if (strcmp(command, "dump") == 0) {
        int len;
        char *stats = stats_prefix_dump(&len);
        write_and_free(c, stats, len);
    }
    else {
        out_string(c, "CLIENT_ERROR usage: stats detail on|off|dump");
    }
}
