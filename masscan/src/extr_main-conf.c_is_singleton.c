
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int flags; char const** alts; } ;


 scalar_t__ EQUALS (char const*,char const*) ;
 int F_BOOL ;
 TYPE_1__* config_parameters ;

__attribute__((used)) static int
is_singleton(const char *name)
{
    static const char *singletons[] = {
        "echo", "echo-all", "selftest", "self-test", "regress",
        "benchmark",
        "system-dns", "traceroute", "version",
        "version-light",
        "version-all", "version-trace",
        "osscan-limit", "osscan-guess",
        "badsum", "reason", "open", "open-only",
        "packet-trace", "release-memory",
        "log-errors", "append-output", "webxml",
        "no-stylesheet", "heartbleed", "ticketbleed",
        "send-eth", "send-ip", "iflist",
        "nmap", "trace-packet", "pfring", "sendq",
        "offline", "ping", "ping-sweep", "nobacktrace", "backtrace",
        "infinite", "nointeractive", "interactive", "status", "nostatus",
        "read-range", "read-ranges", "readrange", "read-ranges",
        0};
    size_t i;

    for (i=0; singletons[i]; i++) {
        if (EQUALS(singletons[i], name))
            return 1;
    }

    for (i=0; config_parameters[i].name; i++) {
        if (EQUALS(config_parameters[i].name, name)) {
            return (config_parameters[i].flags & F_BOOL) == F_BOOL;
        } else {
            size_t j;
            for (j=0; config_parameters[i].alts[j]; j++) {
                if (EQUALS(config_parameters[i].alts[j], name)) {
                    return (config_parameters[i].flags & F_BOOL) == F_BOOL;
                }
            }
        }
    }

    return 0;
}
