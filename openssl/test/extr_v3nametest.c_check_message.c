
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_name_fn {int name; } ;
typedef int msg ;


 int BIO_snprintf (char*,int,char*,int ,char const*,char const*,char*,char const*) ;
 int TEST_error (char*,char*) ;
 scalar_t__ is_exception (char*) ;

__attribute__((used)) static int check_message(const struct set_name_fn *fn, const char *op,
                         const char *nameincert, int match, const char *name)
{
    char msg[1024];

    if (match < 0)
        return 1;
    BIO_snprintf(msg, sizeof(msg), "%s: %s: [%s] %s [%s]",
                 fn->name, op, nameincert,
                 match ? "matches" : "does not match", name);
    if (is_exception(msg))
        return 1;
    TEST_error("%s", msg);
    return 0;
}
