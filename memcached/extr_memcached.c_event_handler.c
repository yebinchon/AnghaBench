
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {short which; int const sfd; } ;
typedef TYPE_1__ conn ;
struct TYPE_6__ {scalar_t__ verbose; } ;


 int assert (int ) ;
 int conn_close (TYPE_1__*) ;
 int drive_machine (TYPE_1__*) ;
 int fprintf (int ,char*) ;
 TYPE_2__ settings ;
 int stderr ;

void event_handler(const int fd, const short which, void *arg) {
    conn *c;

    c = (conn *)arg;
    assert(c != ((void*)0));

    c->which = which;


    if (fd != c->sfd) {
        if (settings.verbose > 0)
            fprintf(stderr, "Catastrophic: event fd doesn't match conn fd!\n");
        conn_close(c);
        return;
    }

    drive_machine(c);


    return;
}
