
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int connect_phase_t ;
typedef int SSL_TEST_CTX ;
typedef int PEER ;
 int TEST_error (char*) ;
 int do_app_data_step (int *) ;
 int do_handshake_step (int *) ;
 int do_reneg_setup_step (int const*,int *) ;
 int do_shutdown_step (int *) ;

__attribute__((used)) static void do_connect_step(const SSL_TEST_CTX *test_ctx, PEER *peer,
                            connect_phase_t phase)
{
    switch (phase) {
    case 132:
        do_handshake_step(peer);
        break;
    case 131:
        do_app_data_step(peer);
        break;
    case 129:
        do_reneg_setup_step(test_ctx, peer);
        break;
    case 130:
        do_handshake_step(peer);
        break;
    case 134:
        do_app_data_step(peer);
        break;
    case 128:
        do_shutdown_step(peer);
        break;
    case 133:
        TEST_error("Action after connection done");
        break;
    }
}
