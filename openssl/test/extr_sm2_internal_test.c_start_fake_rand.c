
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bytes; } ;


 int OPENSSL_hexstr2buf (char const*,int *) ;
 TYPE_1__* RAND_get_rand_method () ;
 int RAND_set_rand_method (TYPE_1__*) ;
 int TEST_ptr (TYPE_1__*) ;
 int TEST_true (int ) ;
 TYPE_1__ fake_rand ;
 int fake_rand_bytes ;
 scalar_t__ fake_rand_bytes_offset ;
 int fake_rand_size ;
 int get_faked_bytes ;
 TYPE_1__* saved_rand ;
 int strlen (char const*) ;

__attribute__((used)) static int start_fake_rand(const char *hex_bytes)
{

    if (!TEST_ptr(saved_rand = RAND_get_rand_method()))
        return 0;

    fake_rand = *saved_rand;

    fake_rand.bytes = get_faked_bytes;

    fake_rand_bytes = OPENSSL_hexstr2buf(hex_bytes, ((void*)0));
    fake_rand_bytes_offset = 0;
    fake_rand_size = strlen(hex_bytes) / 2;


    if (!TEST_true(RAND_set_rand_method(&fake_rand)))
        return 0;
    return 1;
}
