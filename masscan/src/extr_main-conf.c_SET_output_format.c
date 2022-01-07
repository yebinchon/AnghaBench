
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int format; } ;
struct TYPE_3__ {int ip; int port; } ;
struct Masscan {TYPE_2__ output; TYPE_1__ redis; int echo_all; int * echo; } ;
typedef enum OutputFormat { ____Placeholder_OutputFormat } OutputFormat ;
typedef int FILE ;


 int CONF_ERR ;
 int CONF_OK ;
 scalar_t__ EQUALS (char*,char const*) ;
 int LOG (int ,char*,...) ;
 int UNUSEDPARM (char const*) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static int SET_output_format(struct Masscan *masscan, const char *name, const char *value)
{
    enum OutputFormat x = 0;
    UNUSEDPARM(name);
    if (masscan->echo) {
        FILE *fp = masscan->echo;
        switch (masscan->output.format) {
            case 137: if (masscan->echo_all) fprintf(fp, "output-format = interactive\n"); break;
            case 135:fprintf(fp, "output-format = interactive\n"); break;
            case 133: fprintf(fp, "output-format = list\n"); break;
            case 129:fprintf(fp, "output-format = unicornscan\n"); break;
            case 128: fprintf(fp, "output-format = xml\n"); break;
            case 139: fprintf(fp, "output-format = binary\n"); break;
            case 136: fprintf(fp, "output-format = grepable\n"); break;
            case 134: fprintf(fp, "output-format = json\n"); break;
            case 132: fprintf(fp, "output-format = ndjson\n"); break;
            case 138: fprintf(fp, "output-format = certs\n"); break;
            case 131: fprintf(fp, "output-format = none\n"); break;
            case 130:
                fprintf(fp, "output-format = redis\n");
                fprintf(fp, "redis = %u.%u.%u.%u:%u\n",
                        (unsigned char)(masscan->redis.ip>>24),
                        (unsigned char)(masscan->redis.ip>>16),
                        (unsigned char)(masscan->redis.ip>> 8),
                        (unsigned char)(masscan->redis.ip>> 0),
                        masscan->redis.port);
                break;

            default:
                fprintf(fp, "output-format = unknown(%u)\n", masscan->output.format);
                break;
        }
        return 0;
    }
    if (EQUALS("unknown(0)", value)) x = 135;
    else if (EQUALS("interactive", value)) x = 135;
    else if (EQUALS("list", value)) x = 133;
    else if (EQUALS("unicornscan", value)) x = 129;
    else if (EQUALS("xml", value)) x = 128;
    else if (EQUALS("binary", value)) x = 139;
    else if (EQUALS("greppable", value)) x = 136;
    else if (EQUALS("grepable", value)) x = 136;
    else if (EQUALS("json", value)) x = 134;
    else if (EQUALS("ndjson", value)) x = 132;
    else if (EQUALS("certs", value)) x = 138;
    else if (EQUALS("none", value)) x = 131;
    else if (EQUALS("redis", value)) x = 130;
    else {
        LOG(0, "FAIL: unknown output-format: %s\n", value);
        LOG(0, "  hint: 'binary', 'xml', 'grepable', ...\n");
        return CONF_ERR;
    }
    masscan->output.format = x;

    return CONF_OK;
}
