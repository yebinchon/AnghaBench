#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msghdr ;
typedef  int /*<<< orphan*/  hashvaltmp ;
struct TYPE_11__ {int message_size; } ;
struct TYPE_12__ {TYPE_2__ tmp; } ;
struct TYPE_13__ {TYPE_3__ s3; TYPE_1__* init_buf; } ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef  TYPE_4__ SSL ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 int SSL3_HM_HEADER_LENGTH ; 
 unsigned char SSL3_MT_MESSAGE_HASH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,unsigned char*,int,size_t*) ; 

int FUNC5(SSL *s, const unsigned char *hashval,
                                  size_t hashlen, const unsigned char *hrr,
                                  size_t hrrlen)
{
    unsigned char hashvaltmp[EVP_MAX_MD_SIZE];
    unsigned char msghdr[SSL3_HM_HEADER_LENGTH];

    FUNC0(msghdr, 0, sizeof(msghdr));

    if (hashval == NULL) {
        hashval = hashvaltmp;
        hashlen = 0;
        /* Get the hash of the initial ClientHello */
        if (!FUNC1(s, 0)
                || !FUNC4(s, hashvaltmp, sizeof(hashvaltmp),
                                       &hashlen)) {
            /* SSLfatal() already called */
            return 0;
        }
    }

    /* Reinitialise the transcript hash */
    if (!FUNC3(s)) {
        /* SSLfatal() already called */
        return 0;
    }

    /* Inject the synthetic message_hash message */
    msghdr[0] = SSL3_MT_MESSAGE_HASH;
    msghdr[SSL3_HM_HEADER_LENGTH - 1] = (unsigned char)hashlen;
    if (!FUNC2(s, msghdr, SSL3_HM_HEADER_LENGTH)
            || !FUNC2(s, hashval, hashlen)) {
        /* SSLfatal() already called */
        return 0;
    }

    /*
     * Now re-inject the HRR and current message if appropriate (we just deleted
     * it when we reinitialised the transcript hash above). Only necessary after
     * receiving a ClientHello2 with a cookie.
     */
    if (hrr != NULL
            && (!FUNC2(s, hrr, hrrlen)
                || !FUNC2(s, (unsigned char *)s->init_buf->data,
                                    s->s3.tmp.message_size
                                    + SSL3_HM_HEADER_LENGTH))) {
        /* SSLfatal() already called */
        return 0;
    }

    return 1;
}