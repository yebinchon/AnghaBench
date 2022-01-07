
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_printf_stderr (char*,...) ;

void test_fail_message_prefix(const char *prefix, const char *file,
                              int line, const char *type,
                              const char *left, const char *right,
                              const char *op)
{
    test_printf_stderr("%s: ", prefix != ((void*)0) ? prefix : "ERROR");
    if (type)
        test_printf_stderr("(%s) ", type);
    if (op != ((void*)0)) {
        if (left != ((void*)0) && right != ((void*)0))
            test_printf_stderr("'%s %s %s' failed", left, op, right);
        else
            test_printf_stderr("'%s'", op);
    }
    if (file != ((void*)0)) {
        test_printf_stderr(" @ %s:%d", file, line);
    }
    test_printf_stderr("\n");
}
