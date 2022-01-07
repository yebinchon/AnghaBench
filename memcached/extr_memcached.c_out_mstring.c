
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ wbytes; int noreply; scalar_t__ wbuf; scalar_t__ wcurr; int write_and_go; } ;
typedef TYPE_1__ conn ;


 int assert (int) ;
 int conn_new_cmd ;
 int conn_set_state (TYPE_1__*,int ) ;
 int conn_write ;
 int memcpy (scalar_t__,char*,int) ;

__attribute__((used)) static void out_mstring(conn *c, bool use_noreply) {
    assert(c != ((void*)0));
    assert(c->wbytes != 0);

    if (c->noreply && use_noreply) {
        c->noreply = 0;
        conn_set_state(c, conn_new_cmd);
        return;
    }

    memcpy(c->wbuf + c->wbytes, "\r\n", 2);
    c->wbytes += 2;
    c->wcurr = c->wbuf;

    conn_set_state(c, conn_write);
    c->write_and_go = conn_new_cmd;
    return;
}
