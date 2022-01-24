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
struct TYPE_6__ {int /*<<< orphan*/  plaintext; int /*<<< orphan*/  ciphertext; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ SSL3_RECORD ;
typedef  TYPE_2__ RECORD_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int FUNC5(SSL3_RECORD *rec, RECORD_DATA *recd, int enc)
{
    int ret = 0;
    unsigned char *refd;
    size_t refdatalen;

    if (enc)
        refd = FUNC4(recd->ciphertext, &refdatalen);
    else
        refd = FUNC4(recd->plaintext, &refdatalen);

    if (!FUNC3(refd)) {
        FUNC1("Failed to get reference data");
        goto err;
    }

    if (!FUNC2(rec->data, rec->length, refd, refdatalen))
        goto err;

    ret = 1;

 err:
    FUNC0(refd);
    return ret;
}