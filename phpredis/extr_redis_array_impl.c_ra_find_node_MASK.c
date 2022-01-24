#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  ret ;
struct TYPE_11__ {int /*<<< orphan*/  digest_size; int /*<<< orphan*/  (* hash_final ) (unsigned char*,void*) ;int /*<<< orphan*/  (* hash_update ) (void*,unsigned char const*,int) ;int /*<<< orphan*/  (* hash_init ) (void*) ;int /*<<< orphan*/  context_size; } ;
typedef  TYPE_3__ php_hash_ops ;
struct TYPE_12__ {unsigned long count; int /*<<< orphan*/ * redis; TYPE_2__* continuum; int /*<<< orphan*/ * algorithm; int /*<<< orphan*/  z_dist; } ;
struct TYPE_10__ {int nb_points; TYPE_1__* points; } ;
struct TYPE_9__ {unsigned long value; int index; } ;
typedef  TYPE_4__ RedisArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ IS_NULL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*,unsigned char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_4__*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_4__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

zval *
FUNC15(RedisArray *ra, const char *key, int key_len, int *out_pos)
{
    int pos;
    zend_string *out;

    /* extract relevant part of the key */
    if ((out = FUNC10(ra, key, key_len)) == NULL) {
        return NULL;
    }

    if (FUNC4(ra->z_dist) == IS_NULL) {
        int i;
        unsigned long ret = 0xffffffff;
        const php_hash_ops *ops;

        /* hash */
        if (ra->algorithm && (ops = FUNC8(FUNC3(ra->algorithm), FUNC2(ra->algorithm))) != NULL) {
            void *ctx = FUNC6(ops->context_size);
            unsigned char *digest = FUNC6(ops->digest_size);

            ops->hash_init(ctx);
            ops->hash_update(ctx, (const unsigned char *)FUNC3(out), FUNC2(out));
            ops->hash_final(digest, ctx);

            FUNC7(&ret, digest, FUNC1(sizeof(ret), ops->digest_size));
            ret %= 0xffffffff;

            FUNC5(digest);
            FUNC5(ctx);
        } else {
            for (i = 0; i < FUNC2(out); ++i) {
                FUNC0(ret, FUNC3(out)[i]);
            }
        }

        /* get position on ring */
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
        pos = FUNC9(ra, key, key_len);
        if (pos < 0 || pos >= ra->count) {
            FUNC14(out);
            return NULL;
        }
    }
    FUNC14(out);

    if(out_pos) *out_pos = pos;

    return &ra->redis[pos];
}