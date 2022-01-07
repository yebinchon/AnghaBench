
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; int last_cmd_time; int transport; } ;
typedef int ADD_STAT ;


 int APPEND_NUM_STAT (int,char*,char*,...) ;
 scalar_t__ IS_UDP (int ) ;
 int MAXPATHLEN ;
 int STAT_KEY_LEN ;
 int STAT_VAL_LEN ;
 int assert (int ) ;
 scalar_t__ conn_closed ;
 scalar_t__ conn_listening ;
 scalar_t__ conn_read ;
 int conn_to_str (TYPE_1__*,char*,char*) ;
 TYPE_1__** conns ;
 int current_time ;
 int max_fds ;
 int state_text (scalar_t__) ;

__attribute__((used)) static void process_stats_conns(ADD_STAT add_stats, void *c) {
    int i;
    char key_str[STAT_KEY_LEN];
    char val_str[STAT_VAL_LEN];
    size_t extras_len = sizeof("unix:") + sizeof("65535");
    char addr[MAXPATHLEN + extras_len];
    char svr_addr[MAXPATHLEN + extras_len];
    int klen = 0, vlen = 0;

    assert(add_stats);

    for (i = 0; i < max_fds; i++) {
        if (conns[i]) {





            if (IS_UDP(conns[i]->transport)) {
                APPEND_NUM_STAT(i, "UDP", "%s", "UDP");
            }
            if (conns[i]->state != conn_closed) {
                conn_to_str(conns[i], addr, svr_addr);

                APPEND_NUM_STAT(i, "addr", "%s", addr);
                if (conns[i]->state != conn_listening &&
                    !(IS_UDP(conns[i]->transport) && conns[i]->state == conn_read)) {
                    APPEND_NUM_STAT(i, "listen_addr", "%s", svr_addr);
                }
                APPEND_NUM_STAT(i, "state", "%s",
                        state_text(conns[i]->state));
                APPEND_NUM_STAT(i, "secs_since_last_cmd", "%d",
                        current_time - conns[i]->last_cmd_time);
            }
        }
    }
}
