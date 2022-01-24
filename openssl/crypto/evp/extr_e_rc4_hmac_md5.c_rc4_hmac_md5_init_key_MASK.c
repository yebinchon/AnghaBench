#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  payload_length; int /*<<< orphan*/  head; int /*<<< orphan*/  md; int /*<<< orphan*/  tail; int /*<<< orphan*/  ks; } ;
typedef  TYPE_1__ EVP_RC4_HMAC_MD5 ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_PAYLOAD_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(EVP_CIPHER_CTX *ctx,
                                 const unsigned char *inkey,
                                 const unsigned char *iv, int enc)
{
    EVP_RC4_HMAC_MD5 *key = FUNC3(ctx);

    FUNC2(&key->ks, FUNC0(ctx), inkey);

    FUNC1(&key->head);       /* handy when benchmarking */
    key->tail = key->head;
    key->md = key->head;

    key->payload_length = NO_PAYLOAD_LENGTH;

    return 1;
}