
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_PACKAGE ;
typedef int TEST_CUSTOM_DATA ;
typedef int EXPECTED ;


 int OPENSSL_free (unsigned char*) ;
 int do_encode (int *,unsigned char*,size_t,int const*) ;
 size_t make_custom_der (int const*,unsigned char**,int ) ;

__attribute__((used)) static int do_encode_custom(EXPECTED *input,
                            const TEST_CUSTOM_DATA *custom_data,
                            const TEST_PACKAGE *package)
{
    unsigned char *expected = ((void*)0);
    size_t expected_length = make_custom_der(custom_data, &expected, 0);
    int ret;

    if (expected_length == 0)
        return -1;

    ret = do_encode(input, expected, expected_length, package);
    OPENSSL_free(expected);

    return ret;
}
