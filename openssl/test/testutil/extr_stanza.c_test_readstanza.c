
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* key; char* value; } ;
struct TYPE_5__ {scalar_t__ numpairs; char* buff; int curr; int start; int fp; TYPE_2__* pairs; } ;
typedef TYPE_1__ STANZA ;
typedef TYPE_2__ PAIR ;


 scalar_t__ BIO_gets (int ,char*,int) ;
 char* OPENSSL_strdup (char const*) ;
 int TESTMAXPAIRS ;
 int TEST_info (char*,char const*,...) ;
 int TEST_int_lt (int ,int ) ;
 int TEST_ptr (char*) ;
 int read_key (TYPE_1__*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strip_spaces (char*) ;

int test_readstanza(STANZA *s)
{
    PAIR *pp = s->pairs;
    char *p, *equals, *key;
    const char *value;

    for (s->numpairs = 0; BIO_gets(s->fp, s->buff, sizeof(s->buff)); ) {
        s->curr++;
        if (!TEST_ptr(p = strchr(s->buff, '\n'))) {
            TEST_info("Line %d too long", s->curr);
            return 0;
        }
        *p = '\0';


        if (s->buff[0] == '\0')
            break;


        if (s->buff[0] == '#')
            continue;


        if (!TEST_ptr(equals = strchr(s->buff, '='))) {
            TEST_info("Missing = at line %d\n", s->curr);
            return 0;
        }
        *equals++ = '\0';
        if (!TEST_ptr(key = strip_spaces(s->buff))) {
            TEST_info("Empty field at line %d\n", s->curr);
            return 0;
        }
        if ((value = strip_spaces(equals)) == ((void*)0))
            value = "";

        if (strcmp(key, "Title") == 0) {
            TEST_info("Starting \"%s\" tests at line %d", value, s->curr);
            continue;
        }

        if (s->numpairs == 0)
            s->start = s->curr;

        if (strcmp(key, "PrivateKey") == 0) {
            if (!read_key(s))
                return 0;
        }
        if (strcmp(key, "PublicKey") == 0) {
            if (!read_key(s))
                return 0;
        }

        if (!TEST_int_lt(s->numpairs++, TESTMAXPAIRS)
                || !TEST_ptr(pp->key = OPENSSL_strdup(key))
                || !TEST_ptr(pp->value = OPENSSL_strdup(value)))
            return 0;
        pp++;
    }


    return 1;
}
