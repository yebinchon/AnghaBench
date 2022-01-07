
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __wrap_buffer_write_file ;
 int expect_string (int ,char const*,char const*) ;
 char const* pem ;
 char const* test_server_key ;
 int tls_crypt_v2_write_server_key_file (char const*) ;
 int will_return (int ,int) ;

__attribute__((used)) static void
test_tls_crypt_v2_write_server_key_file(void **state) {
    const char *filename = "testfilename.key";

    expect_string(__wrap_buffer_write_file, filename, filename);
    expect_string(__wrap_buffer_write_file, pem, test_server_key);
    will_return(__wrap_buffer_write_file, 1);

    tls_crypt_v2_write_server_key_file(filename);
}
