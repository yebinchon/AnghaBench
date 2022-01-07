
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int protocol_binary_response_header ;
struct TYPE_7__ {char* wbuf; int write_and_go; } ;
typedef TYPE_1__ conn ;


 int PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ;
 int add_bin_header (TYPE_1__*,int ,int ,size_t,size_t) ;
 int add_iov (TYPE_1__*,char*,size_t) ;
 int conn_mwrite ;
 int conn_new_cmd ;
 int conn_set_state (TYPE_1__*,int ) ;
 int memcpy (char*,char*,size_t) ;
 int write_bin_error (TYPE_1__*,int ,int *,int ) ;

__attribute__((used)) static void write_bin_miss_response(conn *c, char *key, size_t nkey) {
    if (nkey) {
        char *ofs = c->wbuf + sizeof(protocol_binary_response_header);
        add_bin_header(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT,
                0, nkey, nkey);
        memcpy(ofs, key, nkey);
        add_iov(c, ofs, nkey);
        conn_set_state(c, conn_mwrite);
        c->write_and_go = conn_new_cmd;
    } else {
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT,
                        ((void*)0), 0);
    }
}
