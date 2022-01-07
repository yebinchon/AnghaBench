
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cmd; scalar_t__ rbytes; int * item; int substate; } ;
typedef TYPE_1__ conn ;


 int bin_no_state ;
 int conn_parse_cmd ;
 int conn_set_state (TYPE_1__*,int ) ;
 int conn_shrink (TYPE_1__*) ;
 int conn_waiting ;
 int item_remove (int *) ;

__attribute__((used)) static void reset_cmd_handler(conn *c) {
    c->cmd = -1;
    c->substate = bin_no_state;
    if(c->item != ((void*)0)) {
        item_remove(c->item);
        c->item = ((void*)0);
    }
    conn_shrink(c);
    if (c->rbytes > 0) {
        conn_set_state(c, conn_parse_cmd);
    } else {
        conn_set_state(c, conn_waiting);
    }
}
