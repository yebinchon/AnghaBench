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

/* Variables and functions */
 unsigned int MS_PVKMAGIC ; 
 int /*<<< orphan*/  PEM_F_DO_PVK_HEADER ; 
 int /*<<< orphan*/  PEM_R_BAD_MAGIC_NUMBER ; 
 int /*<<< orphan*/  PEM_R_INCONSISTENT_HEADER ; 
 int /*<<< orphan*/  PEM_R_PVK_TOO_SHORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int PVK_MAX_KEYLEN ; 
 unsigned int PVK_MAX_SALTLEN ; 
 unsigned int FUNC1 (unsigned char const**) ; 

__attribute__((used)) static int FUNC2(const unsigned char **in, unsigned int length,
                         int skip_magic,
                         unsigned int *psaltlen, unsigned int *pkeylen)
{
    const unsigned char *p = *in;
    unsigned int pvk_magic, is_encrypted;

    if (skip_magic) {
        if (length < 20) {
            FUNC0(PEM_F_DO_PVK_HEADER, PEM_R_PVK_TOO_SHORT);
            return 0;
        }
    } else {
        if (length < 24) {
            FUNC0(PEM_F_DO_PVK_HEADER, PEM_R_PVK_TOO_SHORT);
            return 0;
        }
        pvk_magic = FUNC1(&p);
        if (pvk_magic != MS_PVKMAGIC) {
            FUNC0(PEM_F_DO_PVK_HEADER, PEM_R_BAD_MAGIC_NUMBER);
            return 0;
        }
    }
    /* Skip reserved */
    p += 4;
    /*
     * keytype =
     */ FUNC1(&p);
    is_encrypted = FUNC1(&p);
    *psaltlen = FUNC1(&p);
    *pkeylen = FUNC1(&p);

    if (*pkeylen > PVK_MAX_KEYLEN || *psaltlen > PVK_MAX_SALTLEN)
        return 0;

    if (is_encrypted && *psaltlen == 0) {
        FUNC0(PEM_F_DO_PVK_HEADER, PEM_R_INCONSISTENT_HEADER);
        return 0;
    }

    *in = p;
    return 1;
}