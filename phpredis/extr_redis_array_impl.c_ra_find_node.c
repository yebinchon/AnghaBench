
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int ret ;
struct TYPE_11__ {int digest_size; int (* hash_final ) (unsigned char*,void*) ;int (* hash_update ) (void*,unsigned char const*,int) ;int (* hash_init ) (void*) ;int context_size; } ;
typedef TYPE_3__ php_hash_ops ;
struct TYPE_12__ {unsigned long count; int * redis; TYPE_2__* continuum; int * algorithm; int z_dist; } ;
struct TYPE_10__ {int nb_points; TYPE_1__* points; } ;
struct TYPE_9__ {unsigned long value; int index; } ;
typedef TYPE_4__ RedisArray ;


 int CRC32 (unsigned long,int ) ;
 scalar_t__ IS_NULL ;
 int MIN (int,int ) ;
 int ZSTR_LEN (int *) ;
 int * ZSTR_VAL (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int efree (void*) ;
 void* emalloc (int ) ;
 int memcpy (unsigned long*,unsigned char*,int ) ;
 TYPE_3__* php_hash_fetch_ops (int *,int) ;
 int ra_call_distributor (TYPE_4__*,char const*,int) ;
 int * ra_extract_key (TYPE_4__*,char const*,int) ;
 int stub1 (void*) ;
 int stub2 (void*,unsigned char const*,int) ;
 int stub3 (unsigned char*,void*) ;
 int zend_string_release (int *) ;

zval *
ra_find_node(RedisArray *ra, const char *key, int key_len, int *out_pos)
{
    int pos;
    zend_string *out;


    if ((out = ra_extract_key(ra, key, key_len)) == ((void*)0)) {
        return ((void*)0);
    }

    if (Z_TYPE(ra->z_dist) == IS_NULL) {
        int i;
        unsigned long ret = 0xffffffff;
        const php_hash_ops *ops;


        if (ra->algorithm && (ops = php_hash_fetch_ops(ZSTR_VAL(ra->algorithm), ZSTR_LEN(ra->algorithm))) != ((void*)0)) {
            void *ctx = emalloc(ops->context_size);
            unsigned char *digest = emalloc(ops->digest_size);

            ops->hash_init(ctx);
            ops->hash_update(ctx, (const unsigned char *)ZSTR_VAL(out), ZSTR_LEN(out));
            ops->hash_final(digest, ctx);

            memcpy(&ret, digest, MIN(sizeof(ret), ops->digest_size));
            ret %= 0xffffffff;

            efree(digest);
            efree(ctx);
        } else {
            for (i = 0; i < ZSTR_LEN(out); ++i) {
                CRC32(ret, ZSTR_VAL(out)[i]);
            }
        }


        if (ra->continuum) {
            int left = 0, right = ra->continuum->nb_points;
            while (left < right) {
                i = (int)((left + right) / 2);
                if (ra->continuum->points[i].value < ret) {
                    left = i + 1;
                } else {
                    right = i;
                }
            }
            if (right == ra->continuum->nb_points) {
                right = 0;
            }
            pos = ra->continuum->points[right].index;
        } else {
            pos = (int)((ret ^ 0xffffffff) * ra->count / 0xffffffff);
        }
    } else {
        pos = ra_call_distributor(ra, key, key_len);
        if (pos < 0 || pos >= ra->count) {
            zend_string_release(out);
            return ((void*)0);
        }
    }
    zend_string_release(out);

    if(out_pos) *out_pos = pos;

    return &ra->redis[pos];
}
