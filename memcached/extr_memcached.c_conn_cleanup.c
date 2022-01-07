
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int transport; int * sasl_conn; scalar_t__ write_and_free; } ;
typedef TYPE_1__ conn ;
struct TYPE_7__ {int sasl; } ;


 scalar_t__ IS_UDP (int ) ;
 int assert (int ) ;
 int conn_read ;
 int conn_release_items (TYPE_1__*) ;
 int conn_set_state (TYPE_1__*,int ) ;
 int free (scalar_t__) ;
 int sasl_dispose (int **) ;
 TYPE_2__ settings ;

__attribute__((used)) static void conn_cleanup(conn *c) {
    assert(c != ((void*)0));

    conn_release_items(c);

    if (c->write_and_free) {
        free(c->write_and_free);
        c->write_and_free = 0;
    }

    if (c->sasl_conn) {
        assert(settings.sasl);
        sasl_dispose(&c->sasl_conn);
        c->sasl_conn = ((void*)0);
    }

    if (IS_UDP(c->transport)) {
        conn_set_state(c, conn_read);
    }
}
