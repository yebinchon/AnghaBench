#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ext_len; int sig_len; size_t sct_len; int /*<<< orphan*/  sct; int /*<<< orphan*/  ext; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  log_id; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ SCT ;

/* Variables and functions */
 int /*<<< orphan*/  CT_F_I2O_SCT ; 
 int /*<<< orphan*/  CT_R_SCT_NOT_SET ; 
 size_t CT_V1_HASHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  SCT_VERSION_V1 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*,unsigned char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned char*) ; 

int FUNC8(const SCT *sct, unsigned char **out)
{
    size_t len;
    unsigned char *p = NULL, *pstart = NULL;

    if (!FUNC3(sct)) {
        FUNC0(CT_F_I2O_SCT, CT_R_SCT_NOT_SET);
        goto err;
    }
    /*
     * Fixed-length header: struct { (1 byte) Version sct_version; (32 bytes)
     * log_id id; (8 bytes) uint64 timestamp; (2 bytes + ?) CtExtensions
     * extensions; (1 byte) Hash algorithm (1 byte) Signature algorithm (2
     * bytes + ?) Signature
     */
    if (sct->version == SCT_VERSION_V1)
        len = 43 + sct->ext_len + 4 + sct->sig_len;
    else
        len = sct->sct_len;

    if (out == NULL)
        return len;

    if (*out != NULL) {
        p = *out;
        *out += len;
    } else {
        pstart = p = FUNC2(len);
        if (p == NULL) {
            FUNC0(CT_F_I2O_SCT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        *out = p;
    }

    if (sct->version == SCT_VERSION_V1) {
        *p++ = sct->version;
        FUNC6(p, sct->log_id, CT_V1_HASHLEN);
        p += CT_V1_HASHLEN;
        FUNC5(sct->timestamp, p);
        FUNC7(sct->ext_len, p);
        if (sct->ext_len > 0) {
            FUNC6(p, sct->ext, sct->ext_len);
            p += sct->ext_len;
        }
        if (FUNC4(sct, &p) <= 0)
            goto err;
    } else {
        FUNC6(p, sct->sct, len);
    }

    return len;
err:
    FUNC1(pstart);
    return -1;
}