
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int rand_add_buf ;
struct TYPE_25__ {int fail; } ;
struct TYPE_24__ {int reseed_prop_counter; int parent; } ;
typedef TYPE_1__ RAND_DRBG ;


 TYPE_1__* RAND_DRBG_get0_master () ;
 TYPE_1__* RAND_DRBG_get0_private () ;
 TYPE_1__* RAND_DRBG_get0_public () ;
 int RAND_DRBG_uninstantiate (TYPE_1__*) ;
 TYPE_1__* RAND_OpenSSL () ;
 int RAND_add (unsigned char*,int,int) ;
 int RAND_get_rand_method () ;
 int TEST_ptr (TYPE_1__*) ;
 int TEST_ptr_eq (int ,TYPE_1__*) ;
 int TEST_ptr_ne (TYPE_1__*,TYPE_1__*) ;
 int TEST_true (int ) ;
 int disable_crngt (TYPE_1__*) ;
 int hook_drbg (TYPE_1__*,TYPE_9__*) ;
 TYPE_9__ master_ctx ;
 int memset (unsigned char*,char,int) ;
 TYPE_9__ private_ctx ;
 TYPE_9__ public_ctx ;
 int reset_drbg_hook_ctx () ;
 int test_drbg_reseed (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,int,int,int,scalar_t__) ;
 int test_drbg_reseed_after_fork (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ time (int *) ;
 int unhook_drbg (TYPE_1__*) ;

__attribute__((used)) static int test_rand_drbg_reseed(void)
{
    RAND_DRBG *master, *public, *private;
    unsigned char rand_add_buf[256];
    int rv=0;
    time_t before_reseed;


    if (!TEST_ptr_eq(RAND_get_rand_method(), RAND_OpenSSL()))
        return 0;


    if (!TEST_ptr(master = RAND_DRBG_get0_master())
        || !TEST_ptr(public = RAND_DRBG_get0_public())
        || !TEST_ptr(private = RAND_DRBG_get0_private()))
        return 0;


    if (!TEST_ptr_ne(public, private)
        || !TEST_ptr_ne(public, master)
        || !TEST_ptr_ne(private, master)
        || !TEST_ptr_eq(public->parent, master)
        || !TEST_ptr_eq(private->parent, master))
        return 0;


    if (!TEST_true(disable_crngt(master)))
        return 0;


    RAND_DRBG_uninstantiate(private);
    RAND_DRBG_uninstantiate(public);
    RAND_DRBG_uninstantiate(master);



    hook_drbg(master, &master_ctx);
    hook_drbg(public, &public_ctx);
    hook_drbg(private, &private_ctx);





    if (!TEST_true(test_drbg_reseed(1, master, public, private, 1, 1, 1, 0)))
        goto error;
    reset_drbg_hook_ctx();





    if (!TEST_true(test_drbg_reseed(1, master, public, private, 0, 0, 0, 0)))
        goto error;
    reset_drbg_hook_ctx();





    master->reseed_prop_counter++;
    if (!TEST_true(test_drbg_reseed(1, master, public, private, 0, 1, 1, 0)))
        goto error;
    reset_drbg_hook_ctx();





    master->reseed_prop_counter++;
    private->reseed_prop_counter++;
    if (!TEST_true(test_drbg_reseed(1, master, public, private, 0, 1, 0, 0)))
        goto error;
    reset_drbg_hook_ctx();





    master->reseed_prop_counter++;
    public->reseed_prop_counter++;
    if (!TEST_true(test_drbg_reseed(1, master, public, private, 0, 0, 1, 0)))
        goto error;
    reset_drbg_hook_ctx();







    memset(rand_add_buf, 'r', sizeof(rand_add_buf));
    before_reseed = time(((void*)0));
    RAND_add(rand_add_buf, sizeof(rand_add_buf), sizeof(rand_add_buf));
    if (!TEST_true(test_drbg_reseed(1, master, public, private, 1, 1, 1,
                                    before_reseed)))
        goto error;
    reset_drbg_hook_ctx();





    master_ctx.fail = 1;
    master->reseed_prop_counter++;
    RAND_add(rand_add_buf, sizeof(rand_add_buf), sizeof(rand_add_buf));
    if (!TEST_true(test_drbg_reseed(0, master, public, private, 0, 0, 0, 0)))
        goto error;
    reset_drbg_hook_ctx();
    rv = 1;

error:

    unhook_drbg(master);
    unhook_drbg(public);
    unhook_drbg(private);

    return rv;
}
