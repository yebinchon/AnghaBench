
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int OSSL_TRACE_CATEGORY_ALL ;
 int OSSL_TRACE_CATEGORY_NUM ;
 int OSSL_trace_get_category_num (char*) ;
 int atexit (int ) ;
 int cleanup_trace ;
 int fprintf (int ,char*,char*) ;
 int setup_trace_category (int) ;
 int sk_tracedata_new_null () ;
 int stderr ;
 char* strtok (char*,char*) ;
 int trace_data_stack ;

__attribute__((used)) static void setup_trace(const char *str)
{
    char *val;






    atexit(cleanup_trace);

    trace_data_stack = sk_tracedata_new_null();
    val = OPENSSL_strdup(str);

    if (val != ((void*)0)) {
        char *valp = val;
        char *item;

        for (valp = val; (item = strtok(valp, ",")) != ((void*)0); valp = ((void*)0)) {
            int category = OSSL_trace_get_category_num(item);

            if (category == OSSL_TRACE_CATEGORY_ALL) {
                while (++category < OSSL_TRACE_CATEGORY_NUM)
                    setup_trace_category(category);
                break;
            } else if (category > 0) {
                setup_trace_category(category);
            } else {
                fprintf(stderr,
                        "warning: unknown trace category: '%s'.\n", item);
            }
        }
    }

    OPENSSL_free(val);
}
