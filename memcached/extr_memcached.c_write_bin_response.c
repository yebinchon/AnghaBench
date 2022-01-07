
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cmd; int write_and_go; int noreply; } ;
typedef TYPE_1__ conn ;


 scalar_t__ PROTOCOL_BINARY_CMD_GET ;
 scalar_t__ PROTOCOL_BINARY_CMD_GETK ;
 int add_bin_header (TYPE_1__*,int ,int,int,int) ;
 int add_iov (TYPE_1__*,void*,int) ;
 int conn_mwrite ;
 int conn_new_cmd ;
 int conn_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void write_bin_response(conn *c, void *d, int hlen, int keylen, int dlen) {
    if (!c->noreply || c->cmd == PROTOCOL_BINARY_CMD_GET ||
        c->cmd == PROTOCOL_BINARY_CMD_GETK) {
        add_bin_header(c, 0, hlen, keylen, dlen);
        if(dlen > 0) {
            add_iov(c, d, dlen);
        }
        conn_set_state(c, conn_mwrite);
        c->write_and_go = conn_new_cmd;
    } else {
        conn_set_state(c, conn_new_cmd);
    }
}
