
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long epoch_time_in_ms; char* certificate_file; char* issuer_file; int expected_sct_count; int test_validity; scalar_t__ expected_valid_sct_count; int certs_dir; } ;


 int EXECUTE_CT_TEST () ;
 int SETUP_CT_TEST_FIXTURE () ;
 int certs_dir ;
 TYPE_1__* fixture ;
 int result ;

__attribute__((used)) static int test_verify_fails_for_future_sct(void)
{
    SETUP_CT_TEST_FIXTURE();
    if (fixture == ((void*)0))
        return 0;
    fixture->epoch_time_in_ms = 1365094800000ULL;
    fixture->certs_dir = certs_dir;
    fixture->certificate_file = "embeddedSCTs1.pem";
    fixture->issuer_file = "embeddedSCTs1_issuer.pem";
    fixture->expected_sct_count = 1;
    fixture->expected_valid_sct_count = 0;
    fixture->test_validity = 1;
    EXECUTE_CT_TEST();
    return result;
}
