
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_modules_load (int ,int *,int ) ;
 long ERR_peek_error () ;
 long NCONF_get_number (int ,char*,char*,long*) ;
 char* NCONF_get_string (int ,char*,char*) ;
 int NCONF_load_bio (int ,int ,long*) ;
 int TEST_int_eq (long,int) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_note (char*,...) ;
 int TEST_ptr (char*) ;
 int TEST_str_eq (char*,char*) ;
 int conf ;
 scalar_t__ expect_failure ;
 int in ;

__attribute__((used)) static int test_load_config(void)
{
    long errline;
    long val;
    char *str;
    long err;

    if (!TEST_int_gt(NCONF_load_bio(conf, in, &errline), 0)
        || !TEST_int_eq(err = ERR_peek_error(), 0)) {
        if (expect_failure)
            return 1;
        TEST_note("Failure loading the configuration at line %ld", errline);
        return 0;
    }
    if (expect_failure) {
        TEST_note("Failure expected but did not happen");
        return 0;
    }

    if (!TEST_int_gt(CONF_modules_load(conf, ((void*)0), 0), 0)) {
        TEST_note("Failed in CONF_modules_load");
        return 0;
    }


    str = NCONF_get_string(conf, "", "RANDFILE");
    if (!TEST_ptr(str) || !TEST_str_eq(str, "./.rnd")) {
        TEST_note("RANDFILE incorrect");
        return 0;
    }


    val = 0;
    if (!TEST_int_eq(NCONF_get_number(conf, "CA_default", "default_days", &val), 1)
        || !TEST_int_eq(val, 365)) {
        TEST_note("default_days incorrect");
        return 0;
    }


    val = 0;
    if (!TEST_int_eq(NCONF_get_number(conf, "req", "default_bits", &val), 1)
        || !TEST_int_eq(val, 2048)) {
        TEST_note("default_bits incorrect");
        return 0;
    }


    str = NCONF_get_string(conf, "req_distinguished_name", "countryName_default");
    if (!TEST_ptr(str) || !TEST_str_eq(str, "AU")) {
        TEST_note("countryName_default incorrect");
        return 0;
    }

    return 1;
}
