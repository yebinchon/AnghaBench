#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned char* buf; unsigned char* buf2; unsigned int siglen; int /*<<< orphan*/ ** rsa_key; } ;
typedef  TYPE_1__ loopargs_t ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_md5_sha1 ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int,unsigned char*,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ ** rsa_c ; 
 size_t testnum ; 

__attribute__((used)) static int FUNC4(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char *buf2 = tempargs->buf2;
    unsigned int *rsa_num = &tempargs->siglen;
    RSA **rsa_key = tempargs->rsa_key;
    int ret, count;
    for (count = 0; FUNC1(rsa_c[testnum][0]); count++) {
        ret = FUNC3(NID_md5_sha1, buf, 36, buf2, rsa_num, rsa_key[testnum]);
        if (ret == 0) {
            FUNC0(bio_err, "RSA sign failure\n");
            FUNC2(bio_err);
            count = -1;
            break;
        }
    }
    return count;
}