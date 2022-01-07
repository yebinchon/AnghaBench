
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmpbuf ;
struct TYPE_3__ {int * key; int curr; int fp; } ;
typedef TYPE_1__ STANZA ;


 scalar_t__ BIO_gets (int ,char*,int) ;
 int * BIO_new (int ) ;
 int BIO_puts (int *,char*) ;
 int BIO_reset (int *) ;
 int BIO_s_mem () ;
 int TEST_error (char*) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_ptr (int *) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int read_key(STANZA *s)
{
    char tmpbuf[128];

    if (s->key == ((void*)0)) {
        if (!TEST_ptr(s->key = BIO_new(BIO_s_mem())))
            return 0;
    } else if (!TEST_int_gt(BIO_reset(s->key), 0)) {
        return 0;
    }


    while (BIO_gets(s->fp, tmpbuf, sizeof(tmpbuf))) {
        s->curr++;
        if (!TEST_int_gt(BIO_puts(s->key, tmpbuf), 0))
            return 0;
        if (strncmp(tmpbuf, "-----END", 8) == 0)
            return 1;
    }
    TEST_error("Can't find key end");
    return 0;
}
