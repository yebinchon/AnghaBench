
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mp_log {int dummy; } ;
typedef int optbuf ;
struct TYPE_4__ {int flags; int type; char* unit; char* name; int help; } ;
typedef TYPE_1__ AVOption ;
 TYPE_1__* av_opt_next (void const*,TYPE_1__ const*) ;
 int mp_info (struct mp_log*,char*,...) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void encode_lavc_printoptions(struct mp_log *log, const void *obj,
                                     const char *indent, const char *subindent,
                                     const char *unit, int filter_and,
                                     int filter_eq)
{
    const AVOption *opt = ((void*)0);
    char optbuf[32];
    while ((opt = av_opt_next(obj, opt))) {


        if (opt->flags)
            if ((opt->flags & filter_and) != filter_eq)
                continue;




        if (!unit && opt->type == 135) {
            continue;
        } else if (unit && opt->type != 135) {
            continue;
        } else if (unit && opt->type == 135
                 && strcmp(unit, opt->unit))
        {
            continue;
        } else if (unit && opt->type == 135) {
            mp_info(log, "%s", subindent);
        } else {
            mp_info(log, "%s", indent);
        }

        switch (opt->type) {
        case 133:
            snprintf(optbuf, sizeof(optbuf), "%s=<flags>", opt->name);
            break;
        case 131:
            snprintf(optbuf, sizeof(optbuf), "%s=<int>", opt->name);
            break;
        case 130:
            snprintf(optbuf, sizeof(optbuf), "%s=<int64>", opt->name);
            break;
        case 134:
            snprintf(optbuf, sizeof(optbuf), "%s=<double>", opt->name);
            break;
        case 132:
            snprintf(optbuf, sizeof(optbuf), "%s=<float>", opt->name);
            break;
        case 128:
            snprintf(optbuf, sizeof(optbuf), "%s=<string>", opt->name);
            break;
        case 129:
            snprintf(optbuf, sizeof(optbuf), "%s=<rational>", opt->name);
            break;
        case 136:
            snprintf(optbuf, sizeof(optbuf), "%s=<binary>", opt->name);
            break;
        case 135:
            snprintf(optbuf, sizeof(optbuf), "  [+-]%s", opt->name);
            break;
        default:
            snprintf(optbuf, sizeof(optbuf), "%s", opt->name);
            break;
        }
        optbuf[sizeof(optbuf) - 1] = 0;
        mp_info(log, "%-32s ", optbuf);
        if (opt->help)
            mp_info(log, " %s", opt->help);
        mp_info(log, "\n");
        if (opt->unit && opt->type != 135)
            encode_lavc_printoptions(log, obj, indent, subindent, opt->unit,
                                     filter_and, filter_eq);
    }
}
