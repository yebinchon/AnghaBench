
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int nid; int uptodate; int * funct; int sk; } ;
struct TYPE_10__ {int piles; } ;
typedef TYPE_1__ ENGINE_TABLE ;
typedef TYPE_2__ ENGINE_PILE ;
typedef int ENGINE_CLEANUP_CB ;
typedef int ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_ENGINE_TABLE_REGISTER ;
 int ENGINE_R_INIT_FAILED ;
 int ENGINEerr (int ,int ) ;
 int OPENSSL_free (TYPE_2__*) ;
 TYPE_2__* OPENSSL_malloc (int) ;
 int engine_cleanup_add_first (int *) ;
 int engine_unlocked_finish (int *,int ) ;
 int engine_unlocked_init (int *) ;
 int global_engine_lock ;
 int int_table_check (TYPE_1__**,int) ;
 int lh_ENGINE_PILE_insert (int *,TYPE_2__*) ;
 TYPE_2__* lh_ENGINE_PILE_retrieve (int *,TYPE_2__*) ;
 int sk_ENGINE_delete_ptr (int ,int *) ;
 int sk_ENGINE_free (int ) ;
 int sk_ENGINE_new_null () ;
 int sk_ENGINE_push (int ,int *) ;

int engine_table_register(ENGINE_TABLE **table, ENGINE_CLEANUP_CB *cleanup,
                          ENGINE *e, const int *nids, int num_nids,
                          int setdefault)
{
    int ret = 0, added = 0;
    ENGINE_PILE tmplate, *fnd;
    CRYPTO_THREAD_write_lock(global_engine_lock);
    if (!(*table))
        added = 1;
    if (!int_table_check(table, 1))
        goto end;
    if (added)

        engine_cleanup_add_first(cleanup);
    while (num_nids--) {
        tmplate.nid = *nids;
        fnd = lh_ENGINE_PILE_retrieve(&(*table)->piles, &tmplate);
        if (!fnd) {
            fnd = OPENSSL_malloc(sizeof(*fnd));
            if (fnd == ((void*)0))
                goto end;
            fnd->uptodate = 1;
            fnd->nid = *nids;
            fnd->sk = sk_ENGINE_new_null();
            if (!fnd->sk) {
                OPENSSL_free(fnd);
                goto end;
            }
            fnd->funct = ((void*)0);
            (void)lh_ENGINE_PILE_insert(&(*table)->piles, fnd);
            if (lh_ENGINE_PILE_retrieve(&(*table)->piles, &tmplate) != fnd) {
                sk_ENGINE_free(fnd->sk);
                OPENSSL_free(fnd);
                goto end;
            }
        }

        (void)sk_ENGINE_delete_ptr(fnd->sk, e);



        if (!sk_ENGINE_push(fnd->sk, e))
            goto end;

        fnd->uptodate = 0;
        if (setdefault) {
            if (!engine_unlocked_init(e)) {
                ENGINEerr(ENGINE_F_ENGINE_TABLE_REGISTER,
                          ENGINE_R_INIT_FAILED);
                goto end;
            }
            if (fnd->funct)
                engine_unlocked_finish(fnd->funct, 0);
            fnd->funct = e;
            fnd->uptodate = 1;
        }
        nids++;
    }
    ret = 1;
 end:
    CRYPTO_THREAD_unlock(global_engine_lock);
    return ret;
}
