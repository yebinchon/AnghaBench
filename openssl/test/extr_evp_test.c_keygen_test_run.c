
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {char* err; TYPE_2__* data; } ;
struct TYPE_10__ {int * keyname; int genctx; } ;
struct TYPE_9__ {struct TYPE_9__* next; int * key; int * name; } ;
typedef TYPE_1__ KEY_LIST ;
typedef TYPE_2__ KEYGEN_TEST_DATA ;
typedef TYPE_3__ EVP_TEST ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 scalar_t__ EVP_PKEY_keygen (int ,int **) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int TEST_info (char*,int *) ;
 int TEST_ptr (TYPE_1__*) ;
 scalar_t__ find_key (int *,int *,TYPE_1__*) ;
 TYPE_1__* private_keys ;

__attribute__((used)) static int keygen_test_run(EVP_TEST *t)
{
    KEYGEN_TEST_DATA *keygen = t->data;
    EVP_PKEY *pkey = ((void*)0);

    t->err = ((void*)0);
    if (EVP_PKEY_keygen(keygen->genctx, &pkey) <= 0) {
        t->err = "KEYGEN_GENERATE_ERROR";
        goto err;
    }

    if (keygen->keyname != ((void*)0)) {
        KEY_LIST *key;

        if (find_key(((void*)0), keygen->keyname, private_keys)) {
            TEST_info("Duplicate key %s", keygen->keyname);
            goto err;
        }

        if (!TEST_ptr(key = OPENSSL_malloc(sizeof(*key))))
            goto err;
        key->name = keygen->keyname;
        keygen->keyname = ((void*)0);
        key->key = pkey;
        key->next = private_keys;
        private_keys = key;
    } else {
        EVP_PKEY_free(pkey);
    }

    return 1;

err:
    EVP_PKEY_free(pkey);
    return 0;
}
