
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int noreply; int sfd; size_t wsize; size_t wbytes; int write_and_go; scalar_t__ wbuf; scalar_t__ wcurr; scalar_t__ iovused; scalar_t__ msgused; scalar_t__ msgcurr; } ;
typedef TYPE_1__ conn ;
struct TYPE_7__ {int verbose; } ;


 int add_msghdr (TYPE_1__*) ;
 int assert (int ) ;
 int conn_new_cmd ;
 int conn_set_state (TYPE_1__*,int ) ;
 int conn_write ;
 int fprintf (int ,char*,int,char const*) ;
 int memcpy (scalar_t__,char const*,int) ;
 TYPE_2__ settings ;
 int stderr ;
 size_t strlen (char const*) ;

__attribute__((used)) static void out_string(conn *c, const char *str) {
    size_t len;

    assert(c != ((void*)0));

    if (c->noreply) {
        if (settings.verbose > 1)
            fprintf(stderr, ">%d NOREPLY %s\n", c->sfd, str);
        c->noreply = 0;
        conn_set_state(c, conn_new_cmd);
        return;
    }

    if (settings.verbose > 1)
        fprintf(stderr, ">%d %s\n", c->sfd, str);


    c->msgcurr = 0;
    c->msgused = 0;
    c->iovused = 0;
    add_msghdr(c);

    len = strlen(str);
    if ((len + 2) > c->wsize) {

        str = "SERVER_ERROR output line too long";
        len = strlen(str);
    }

    memcpy(c->wbuf, str, len);
    memcpy(c->wbuf + len, "\r\n", 2);
    c->wbytes = len + 2;
    c->wcurr = c->wbuf;

    conn_set_state(c, conn_write);
    c->write_and_go = conn_new_cmd;
    return;
}
