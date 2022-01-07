
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int connect_phase_t ;
typedef int SSL_TEST_CTX ;
 int TEST_error (char*) ;
 int post_handshake_op (int const*) ;
 int renegotiate_op (int const*) ;

__attribute__((used)) static connect_phase_t next_phase(const SSL_TEST_CTX *test_ctx,
                                  connect_phase_t phase)
{
    switch (phase) {
    case 132:
        if (renegotiate_op(test_ctx) || post_handshake_op(test_ctx))
            return 131;
        return 134;
    case 131:
        return 129;
    case 129:
        if (post_handshake_op(test_ctx))
            return 134;
        return 130;
    case 130:
        return 134;
    case 134:
        return 128;
    case 128:
        return 133;
    case 133:
        TEST_error("Trying to progress after connection done");
        break;
    }
    return -1;
}
