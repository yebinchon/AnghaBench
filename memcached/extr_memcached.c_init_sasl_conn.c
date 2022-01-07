
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int authenticated; int * sasl_conn; } ;
typedef TYPE_1__ conn ;
struct TYPE_6__ {scalar_t__ verbose; int sasl; } ;


 int SASL_OK ;
 int assert (TYPE_1__*) ;
 int fprintf (int ,char*) ;
 scalar_t__* my_sasl_hostname ;
 int sasl_server_new (char*,int *,scalar_t__*,int *,int *,int *,int ,int **) ;
 TYPE_2__ settings ;
 int stderr ;

__attribute__((used)) static void init_sasl_conn(conn *c) {
    assert(c);

    if (!settings.sasl)
        return;

    c->authenticated = 0;

    if (!c->sasl_conn) {
        int result=sasl_server_new("memcached",
                                   ((void*)0),
                                   my_sasl_hostname[0] ? my_sasl_hostname : ((void*)0),
                                   ((void*)0), ((void*)0),
                                   ((void*)0), 0, &c->sasl_conn);
        if (result != SASL_OK) {
            if (settings.verbose) {
                fprintf(stderr, "Failed to initialize SASL conn.\n");
            }
            c->sasl_conn = ((void*)0);
        }
    }
}
