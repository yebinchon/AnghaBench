
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* test_case_name; unsigned long long epoch_time_in_ms; struct TYPE_9__* ctlog_store; } ;
typedef TYPE_1__ CT_TEST_FIXTURE ;


 int CTLOG_STORE_free (TYPE_1__*) ;
 int CTLOG_STORE_load_default_file (TYPE_1__*) ;
 TYPE_1__* CTLOG_STORE_new () ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int TEST_error (char*) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (TYPE_1__*) ;

__attribute__((used)) static CT_TEST_FIXTURE *set_up(const char *const test_case_name)
{
    CT_TEST_FIXTURE *fixture = ((void*)0);

    if (!TEST_ptr(fixture = OPENSSL_zalloc(sizeof(*fixture))))
        goto end;
    fixture->test_case_name = test_case_name;
    fixture->epoch_time_in_ms = 1473269626000ULL;
    if (!TEST_ptr(fixture->ctlog_store = CTLOG_STORE_new())
            || !TEST_int_eq(
                    CTLOG_STORE_load_default_file(fixture->ctlog_store), 1))
        goto end;
    return fixture;

end:
    if (fixture != ((void*)0))
        CTLOG_STORE_free(fixture->ctlog_store);
    OPENSSL_free(fixture);
    TEST_error("Failed to setup");
    return ((void*)0);
}
