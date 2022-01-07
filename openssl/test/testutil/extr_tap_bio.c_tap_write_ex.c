
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_get_data (int *) ;
 int * BIO_next (int *) ;
 int BIO_set_data (int *,char*) ;
 int subtest_level () ;
 int write_string (int *,char const*,int) ;

__attribute__((used)) static int tap_write_ex(BIO *b, const char *buf, size_t size, size_t *in_size)
{
    static char empty[] = "";
    BIO *next = BIO_next(b);
    size_t i;
    int j;

    for (i = 0; i < size; i++) {
        if (BIO_get_data(b) == ((void*)0)) {
            BIO_set_data(b, empty);
            for (j = 0; j < subtest_level(); j++)
                if (!write_string(next, " ", 1))
                    goto err;
            if (!write_string(next, "# ", 2))
                goto err;
        }
        if (!write_string(next, buf + i, 1))
            goto err;
        if (buf[i] == '\n')
            BIO_set_data(b, ((void*)0));
    }
    *in_size = i;
    return 1;

err:
    *in_size = i;
    return 0;
}
