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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int BIO_CLOSE ; 
 int /*<<< orphan*/  BIO_FLAGS_UPLINK_INTERNAL ; 
 int BIO_FP_TEXT ; 
 int /*<<< orphan*/  BIO_F_BIO_NEW_FILE ; 
 int /*<<< orphan*/  BIO_R_NO_SUCH_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  ERR_R_SYS_LIB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char) ; 

BIO *FUNC10(const char *filename, const char *mode)
{
    BIO  *ret;
    FILE *file = FUNC8(filename, mode);
    int fp_flags = BIO_CLOSE;

    if (FUNC9(mode, 'b') == NULL)
        fp_flags |= BIO_FP_TEXT;

    if (file == NULL) {
        FUNC5(ERR_LIB_SYS, FUNC7(),
                       "calling fopen(%s, %s)",
                       filename, mode);
        if (errno == ENOENT
#ifdef ENXIO
            || errno == ENXIO
#endif
            )
            FUNC4(BIO_F_BIO_NEW_FILE, BIO_R_NO_SUCH_FILE);
        else
            FUNC4(BIO_F_BIO_NEW_FILE, ERR_R_SYS_LIB);
        return NULL;
    }
    if ((ret = FUNC1(FUNC2())) == NULL) {
        FUNC6(file);
        return NULL;
    }

    /* we did fopen -> we disengage UPLINK */
    FUNC0(ret, BIO_FLAGS_UPLINK_INTERNAL);
    FUNC3(ret, file, fp_flags);
    return ret;
}