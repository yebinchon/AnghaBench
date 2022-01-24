#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CONF ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONF_F_NCONF_LOAD_FP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,long*) ; 

int FUNC4(CONF *conf, FILE *fp, long *eline)
{
    BIO *btmp;
    int ret;
    if ((btmp = FUNC1(fp, BIO_NOCLOSE)) == NULL) {
        FUNC2(CONF_F_NCONF_LOAD_FP, ERR_R_BUF_LIB);
        return 0;
    }
    ret = FUNC3(conf, btmp, eline);
    FUNC0(btmp);
    return ret;
}