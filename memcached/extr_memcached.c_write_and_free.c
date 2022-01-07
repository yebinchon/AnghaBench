
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* write_and_free; char* wcurr; int wbytes; int write_and_go; } ;
typedef TYPE_1__ conn ;


 int conn_new_cmd ;
 int conn_set_state (TYPE_1__*,int ) ;
 int conn_write ;
 int out_of_memory (TYPE_1__*,char*) ;

__attribute__((used)) static void write_and_free(conn *c, char *buf, int bytes) {
    if (buf) {
        c->write_and_free = buf;
        c->wcurr = buf;
        c->wbytes = bytes;
        conn_set_state(c, conn_write);
        c->write_and_go = conn_new_cmd;
    } else {
        out_of_memory(c, "SERVER_ERROR out of memory writing stats");
    }
}
