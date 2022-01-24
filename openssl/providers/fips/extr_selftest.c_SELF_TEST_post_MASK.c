#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* bio_free_cb ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  libctx; int /*<<< orphan*/  bio_read_ex_cb; int /*<<< orphan*/ * indicator_data; int /*<<< orphan*/ * (* bio_new_buffer_cb ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * indicator_checksum_data; int /*<<< orphan*/  module_filename; int /*<<< orphan*/ * (* bio_new_file_cb ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/ * module_checksum_data; } ;
typedef  TYPE_1__ SELF_TEST_POST_PARAMS ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FIPS_STATE_ERROR ; 
 scalar_t__ FIPS_STATE_INIT ; 
 scalar_t__ FIPS_STATE_RUNNING ; 
 scalar_t__ FIPS_STATE_SELFTEST ; 
 scalar_t__ FIPS_state ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,long,int /*<<< orphan*/ ) ; 

int FUNC8(SELF_TEST_POST_PARAMS *st)
{
    int ok = 0;
    int kats_already_passed = 0;
    int on_demand_test = (FIPS_state != FIPS_STATE_INIT);
    long checksum_len;
    BIO *bio_module = NULL, *bio_indicator = NULL;
    unsigned char *module_checksum = NULL;
    unsigned char *indicator_checksum = NULL;

    if (st == NULL
            || FIPS_state == FIPS_STATE_ERROR
            || FIPS_state == FIPS_STATE_SELFTEST
            || st->module_checksum_data == NULL)
        goto end;

    module_checksum = FUNC1(st->module_checksum_data,
                                         &checksum_len);
    if (module_checksum == NULL)
        goto end;
    bio_module = (*st->bio_new_file_cb)(st->module_filename, "rb");

    /* Always check the integrity of the fips module */
    if (bio_module == NULL
            || !FUNC7(bio_module, st->bio_read_ex_cb,
                                 module_checksum, checksum_len, st->libctx))
        goto end;

    /* This will be NULL during installation - so the self test KATS will run */
    if (st->indicator_data != NULL) {
        /*
         * If the kats have already passed indicator is set - then check the
         * integrity of the indicator.
         */
        if (st->indicator_checksum_data == NULL)
            goto end;
        indicator_checksum = FUNC1(st->indicator_checksum_data,
                                                &checksum_len);
        if (indicator_checksum == NULL)
            goto end;

        bio_indicator =
            (*st->bio_new_buffer_cb)(st->indicator_data,
                                     FUNC2(st->indicator_data));
        if (bio_indicator == NULL
                || !FUNC7(bio_indicator, st->bio_read_ex_cb,
                                     indicator_checksum, checksum_len,
                                     st->libctx))
            goto end;
        else
            kats_already_passed = 1;
    }

    /* Only runs the KAT's during installation OR on_demand() */
    if (on_demand_test || kats_already_passed == 0) {
        /*TODO (3.0) Add self test KATS */
    }
    ok = 1;
end:
    FUNC0(module_checksum);
    FUNC0(indicator_checksum);

    if (st != NULL) {
        (*st->bio_free_cb)(bio_indicator);
        (*st->bio_free_cb)(bio_module);
    }
    FIPS_state = ok ? FIPS_STATE_RUNNING : FIPS_STATE_ERROR;

    return ok;
}