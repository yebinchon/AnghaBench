
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ cmd; int substate; } ;
typedef TYPE_1__ conn ;


 scalar_t__ PROTOCOL_BINARY_CMD_APPEND ;
 scalar_t__ PROTOCOL_BINARY_CMD_PREPEND ;
 int assert (int) ;
 int complete_incr_bin (TYPE_1__*) ;
 int complete_update_bin (TYPE_1__*) ;
 int fprintf (int ,char*,int) ;
 int process_bin_append_prepend (TYPE_1__*) ;
 int process_bin_complete_sasl_auth (TYPE_1__*) ;
 int process_bin_delete (TYPE_1__*) ;
 int process_bin_flush (TYPE_1__*) ;
 int process_bin_get_or_touch (TYPE_1__*) ;
 int process_bin_sasl_auth (TYPE_1__*) ;
 int process_bin_stat (TYPE_1__*) ;
 int process_bin_update (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static void complete_nread_binary(conn *c) {
    assert(c != ((void*)0));
    assert(c->cmd >= 0);

    switch(c->substate) {
    case 130:
        if (c->cmd == PROTOCOL_BINARY_CMD_APPEND ||
                c->cmd == PROTOCOL_BINARY_CMD_PREPEND) {
            process_bin_append_prepend(c);
        } else {
            process_bin_update(c);
        }
        break;
    case 136:
        complete_update_bin(c);
        break;
    case 134:
    case 128:
        process_bin_get_or_touch(c);
        break;
    case 129:
        process_bin_stat(c);
        break;
    case 135:
        process_bin_delete(c);
        break;
    case 133:
        complete_incr_bin(c);
        break;
    case 137:
        process_bin_flush(c);
        break;
    case 132:
        process_bin_sasl_auth(c);
        break;
    case 131:
        process_bin_complete_sasl_auth(c);
        break;
    default:
        fprintf(stderr, "Not handling substate %d\n", c->substate);
        assert(0);
    }
}
