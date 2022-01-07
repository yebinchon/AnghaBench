
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* directory; } ;
struct TYPE_4__ {TYPE_1__ rotate; } ;
struct Masscan {TYPE_2__ output; scalar_t__ echo; scalar_t__ echo_all; } ;


 int CONF_OK ;
 int UNUSEDPARM (char const*) ;
 int fprintf (scalar_t__,char*,char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int strcpy_s (char*,int,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static int SET_rotate_directory(struct Masscan *masscan, const char *name, const char *value)
{
    char *p;
    UNUSEDPARM(name);
    if (masscan->echo) {
        if (memcmp(masscan->output.rotate.directory, ".",2) != 0 || masscan->echo_all) {
            fprintf(masscan->echo, "rotate-dir = %s\n", masscan->output.rotate.directory);
        }
        return 0;
    }
    strcpy_s( masscan->output.rotate.directory,
             sizeof(masscan->output.rotate.directory),
             value);

    p = masscan->output.rotate.directory;
    while (*p && (p[strlen(p)-1] == '/' || p[strlen(p)-1] == '/'))
        p[strlen(p)-1] = '\0';
    return CONF_OK;
}
