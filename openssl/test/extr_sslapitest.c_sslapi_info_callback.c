
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info_cb_states_st {int where; int statestr; } ;
typedef int SSL ;


 int SSL_CB_HANDSHAKE_DONE ;
 int SSL_CB_LOOP ;
 int SSL_ST_ACCEPT ;
 int SSL_ST_CONNECT ;
 scalar_t__ SSL_in_init (int *) ;
 scalar_t__ SSL_is_server (int const*) ;
 int SSL_state_string (int const*) ;
 int TEST_false (int) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_int_ne (int,int ) ;
 int TEST_true (int) ;
 int info_cb_failed ;
 size_t info_cb_offset ;
 struct info_cb_states_st** info_cb_states ;
 size_t info_cb_this_state ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void sslapi_info_callback(const SSL *s, int where, int ret)
{
    struct info_cb_states_st *state = info_cb_states[info_cb_offset];


    if (!TEST_false(ret == 0)) {
        info_cb_failed = 1;
        return;
    }





    if (!TEST_false((SSL_is_server(s) && (where & SSL_ST_CONNECT) != 0))
            || !TEST_false(!SSL_is_server(s) && (where & SSL_ST_ACCEPT) != 0)
            || !TEST_int_ne(state[++info_cb_this_state].where, 0)) {
        info_cb_failed = 1;
        return;
    }


    if (!TEST_true((where & state[info_cb_this_state].where) != 0)) {
        info_cb_failed = 1;
        return;
    }
    if ((where & SSL_CB_LOOP) != 0
            && !TEST_int_eq(strcmp(SSL_state_string(s),
                            state[info_cb_this_state].statestr), 0)) {
        info_cb_failed = 1;
        return;
    }




    if ((where & SSL_CB_HANDSHAKE_DONE)
            && SSL_in_init((SSL *)s) != 0) {
        info_cb_failed = 1;
        return;
    }
}
