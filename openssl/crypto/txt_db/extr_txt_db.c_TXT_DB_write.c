
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* data; } ;
struct TYPE_7__ {long num_fields; int data; } ;
typedef TYPE_1__ TXT_DB ;
typedef TYPE_2__ BUF_MEM ;
typedef int BIO ;


 long BIO_write (int *,char*,int) ;
 int BUF_MEM_free (TYPE_2__*) ;
 int BUF_MEM_grow_clean (TYPE_2__*,int) ;
 TYPE_2__* BUF_MEM_new () ;
 long sk_OPENSSL_PSTRING_num (int ) ;
 char** sk_OPENSSL_PSTRING_value (int ,long) ;
 scalar_t__ strlen (char*) ;

long TXT_DB_write(BIO *out, TXT_DB *db)
{
    long i, j, n, nn, l, tot = 0;
    char *p, **pp, *f;
    BUF_MEM *buf = ((void*)0);
    long ret = -1;

    if ((buf = BUF_MEM_new()) == ((void*)0))
        goto err;
    n = sk_OPENSSL_PSTRING_num(db->data);
    nn = db->num_fields;
    for (i = 0; i < n; i++) {
        pp = sk_OPENSSL_PSTRING_value(db->data, i);

        l = 0;
        for (j = 0; j < nn; j++) {
            if (pp[j] != ((void*)0))
                l += strlen(pp[j]);
        }
        if (!BUF_MEM_grow_clean(buf, (int)(l * 2 + nn)))
            goto err;

        p = buf->data;
        for (j = 0; j < nn; j++) {
            f = pp[j];
            if (f != ((void*)0))
                for (;;) {
                    if (*f == '\0')
                        break;
                    if (*f == '\t')
                        *(p++) = '\\';
                    *(p++) = *(f++);
                }
            *(p++) = '\t';
        }
        p[-1] = '\n';
        j = p - buf->data;
        if (BIO_write(out, buf->data, (int)j) != j)
            goto err;
        tot += j;
    }
    ret = tot;
 err:
    BUF_MEM_free(buf);
    return ret;
}
