
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* bio_free_cb ) (int *) ;int libctx; int bio_read_ex_cb; int * indicator_data; int * (* bio_new_buffer_cb ) (int *,int ) ;int * indicator_checksum_data; int module_filename; int * (* bio_new_file_cb ) (int ,char*) ;int * module_checksum_data; } ;
typedef TYPE_1__ SELF_TEST_POST_PARAMS ;
typedef int BIO ;


 scalar_t__ FIPS_STATE_ERROR ;
 scalar_t__ FIPS_STATE_INIT ;
 scalar_t__ FIPS_STATE_RUNNING ;
 scalar_t__ FIPS_STATE_SELFTEST ;
 scalar_t__ FIPS_state ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (int *,long*) ;
 int strlen (int *) ;
 int * stub1 (int ,char*) ;
 int * stub2 (int *,int ) ;
 int stub3 (int *) ;
 int stub4 (int *) ;
 int verify_integrity (int *,int ,unsigned char*,long,int ) ;

int SELF_TEST_post(SELF_TEST_POST_PARAMS *st)
{
    int ok = 0;
    int kats_already_passed = 0;
    int on_demand_test = (FIPS_state != FIPS_STATE_INIT);
    long checksum_len;
    BIO *bio_module = ((void*)0), *bio_indicator = ((void*)0);
    unsigned char *module_checksum = ((void*)0);
    unsigned char *indicator_checksum = ((void*)0);

    if (st == ((void*)0)
            || FIPS_state == FIPS_STATE_ERROR
            || FIPS_state == FIPS_STATE_SELFTEST
            || st->module_checksum_data == ((void*)0))
        goto end;

    module_checksum = OPENSSL_hexstr2buf(st->module_checksum_data,
                                         &checksum_len);
    if (module_checksum == ((void*)0))
        goto end;
    bio_module = (*st->bio_new_file_cb)(st->module_filename, "rb");


    if (bio_module == ((void*)0)
            || !verify_integrity(bio_module, st->bio_read_ex_cb,
                                 module_checksum, checksum_len, st->libctx))
        goto end;


    if (st->indicator_data != ((void*)0)) {




        if (st->indicator_checksum_data == ((void*)0))
            goto end;
        indicator_checksum = OPENSSL_hexstr2buf(st->indicator_checksum_data,
                                                &checksum_len);
        if (indicator_checksum == ((void*)0))
            goto end;

        bio_indicator =
            (*st->bio_new_buffer_cb)(st->indicator_data,
                                     strlen(st->indicator_data));
        if (bio_indicator == ((void*)0)
                || !verify_integrity(bio_indicator, st->bio_read_ex_cb,
                                     indicator_checksum, checksum_len,
                                     st->libctx))
            goto end;
        else
            kats_already_passed = 1;
    }


    if (on_demand_test || kats_already_passed == 0) {

    }
    ok = 1;
end:
    OPENSSL_free(module_checksum);
    OPENSSL_free(indicator_checksum);

    if (st != ((void*)0)) {
        (*st->bio_free_cb)(bio_indicator);
        (*st->bio_free_cb)(bio_module);
    }
    FIPS_state = ok ? FIPS_STATE_RUNNING : FIPS_STATE_ERROR;

    return ok;
}
