
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_CMP_severity ;


 char* OPENSSL_FILE ;
 int OSSL_CMP_LOG_INFO ;
 scalar_t__ strcmp (char const*,char*) ;
 int test_log_cb_res ;
 int test_log_line ;

__attribute__((used)) static int test_log_cb(const char *func, const char *file, int line,
                       OSSL_CMP_severity level, const char *msg)
{
    test_log_cb_res =

        (strcmp(func, "execute_cmp_ctx_log_cb_test") == 0
         || strcmp(func, "(unknown function)") == 0) &&

        (strcmp(file, OPENSSL_FILE) == 0 || strcmp(file, "(no file)") == 0)
        && (line == test_log_line || line == 0)
        && (level == OSSL_CMP_LOG_INFO || level == -1)
        && strcmp(msg, "ok\n") == 0;
    return 1;
}
