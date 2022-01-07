
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INLINE_FILE_TAG ;
 int __wrap_buffer_read_from_file ;
 int __wrap_buffer_write_file ;
 int expect_string (int ,char const*,...) ;
 int pem ;
 int test_client_key ;
 int test_server_key ;
 int tls_crypt_v2_write_client_key_file (char const*,int *,int ,int ) ;
 int will_return (int ,int) ;

__attribute__((used)) static void
test_tls_crypt_v2_write_client_key_file(void **state) {
    const char *filename = "testfilename.key";


    expect_string(__wrap_buffer_write_file, filename, filename);
    expect_string(__wrap_buffer_write_file, pem, test_client_key);
    will_return(__wrap_buffer_write_file, 1);


    expect_string(__wrap_buffer_read_from_file, filename, filename);
    will_return(__wrap_buffer_read_from_file, test_client_key);

    tls_crypt_v2_write_client_key_file(filename, ((void*)0), INLINE_FILE_TAG,
                                       test_server_key);
}
