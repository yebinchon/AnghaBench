#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  plaintext; int /*<<< orphan*/  seq; int /*<<< orphan*/  iv; int /*<<< orphan*/  key; } ;
struct TYPE_5__ {unsigned char* data; unsigned char* input; size_t length; } ;
typedef  TYPE_1__ SSL3_RECORD ;
typedef  TYPE_2__ RECORD_DATA ;

/* Variables and functions */
 scalar_t__ EVP_GCM_TLS_TAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (scalar_t__) ; 
 size_t SEQ_NUM_SIZE ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,size_t) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int FUNC5(SSL3_RECORD *rec, RECORD_DATA *recd, unsigned char **key,
                       unsigned char *iv, size_t ivlen, unsigned char *seq)
{
    unsigned char *pt = NULL, *sq = NULL, *ivtmp = NULL;
    size_t ptlen;

    *key = FUNC1(recd->key, NULL);
    ivtmp = FUNC1(recd->iv, NULL);
    sq = FUNC1(recd->seq, NULL);
    pt = FUNC4(recd->plaintext, &ptlen);

    if (*key == NULL || ivtmp == NULL || sq == NULL || pt == NULL)
        goto err;

    rec->data = rec->input = FUNC2(ptlen + EVP_GCM_TLS_TAG_LEN);

    if (rec->data == NULL)
        goto err;

    rec->length = ptlen;
    FUNC3(rec->data, pt, ptlen);
    FUNC0(pt);
    FUNC3(seq, sq, SEQ_NUM_SIZE);
    FUNC0(sq);
    FUNC3(iv, ivtmp, ivlen);
    FUNC0(ivtmp);

    return 1;
 err:
    FUNC0(*key);
    *key = NULL;
    FUNC0(ivtmp);
    FUNC0(sq);
    FUNC0(pt);
    return 0;
}