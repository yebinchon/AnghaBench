
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cmd; int authenticated; } ;
typedef TYPE_1__ conn ;
struct TYPE_5__ {int verbose; int sasl; } ;






 int assert (int ) ;
 int fprintf (int ,char*,int,char*) ;
 TYPE_2__ settings ;
 int stderr ;

__attribute__((used)) static bool authenticated(conn *c) {
    assert(settings.sasl);
    bool rv = 0;

    switch (c->cmd) {
    case 130:
    case 131:
    case 129:
    case 128:
        rv = 1;
        break;
    default:
        rv = c->authenticated;
    }

    if (settings.verbose > 1) {
        fprintf(stderr, "authenticated() in cmd 0x%02x is %s\n",
                c->cmd, rv ? "true" : "false");
    }

    return rv;
}
