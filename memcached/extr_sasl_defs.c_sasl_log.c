
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int verbose; } ;
 int SASL_OK ;
 int fprintf (int ,char*,int,char const*) ;
 TYPE_1__ settings ;
 int stderr ;

__attribute__((used)) static int sasl_log(void *context, int level, const char *message)
{
    bool log = 1;

    switch (level) {
    case 132:
        log = 0;
        break;
    case 130:
    case 129:
    case 134:
    case 131:
        if (settings.verbose < 2) {
            log = 0;
        }
        break;
    case 128:
    case 133:
        if (settings.verbose < 1) {
            log = 0;
        }
        break;
    default:

        ;
    }

    if (log) {
        fprintf(stderr, "SASL (severity %d): %s\n", level, message);
    }

    return SASL_OK;
}
