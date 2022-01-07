
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int test_fail_message_prefix (char const*,char const*,int,char const*,char const*,char const*,char const*) ;
 int test_flush_stderr () ;
 int test_printf_stderr (char*) ;
 int test_vprintf_stderr (char const*,int ) ;

__attribute__((used)) static void test_fail_message_va(const char *prefix, const char *file,
                                 int line, const char *type,
                                 const char *left, const char *right,
                                 const char *op, const char *fmt, va_list ap)
{
    test_fail_message_prefix(prefix, file, line, type, left, right, op);
    if (fmt != ((void*)0)) {
        test_vprintf_stderr(fmt, ap);
        test_printf_stderr("\n");
    }
    test_flush_stderr();
}
