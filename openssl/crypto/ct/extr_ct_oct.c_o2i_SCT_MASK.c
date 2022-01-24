#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char version; size_t log_id_len; size_t ext_len; size_t sct_len; int /*<<< orphan*/ * sct; int /*<<< orphan*/ * ext; int /*<<< orphan*/  timestamp; int /*<<< orphan*/ * log_id; } ;
typedef  TYPE_1__ SCT ;

/* Variables and functions */
 int /*<<< orphan*/  CT_F_O2I_SCT ; 
 int /*<<< orphan*/  CT_R_SCT_INVALID ; 
 size_t CT_V1_HASHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t MAX_SCT_SIZE ; 
 void* FUNC1 (unsigned char const*,size_t) ; 
 unsigned char SCT_VERSION_V1 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,size_t) ; 
 int FUNC6 (TYPE_1__*,unsigned char const**,size_t) ; 

SCT *FUNC7(SCT **psct, const unsigned char **in, size_t len)
{
    SCT *sct = NULL;
    const unsigned char *p;

    if (len == 0 || len > MAX_SCT_SIZE) {
        FUNC0(CT_F_O2I_SCT, CT_R_SCT_INVALID);
        goto err;
    }

    if ((sct = FUNC3()) == NULL)
        goto err;

    p = *in;

    sct->version = *p;
    if (sct->version == SCT_VERSION_V1) {
        int sig_len;
        size_t len2;
        /*-
         * Fixed-length header:
         *   struct {
         *     Version sct_version;     (1 byte)
         *     log_id id;               (32 bytes)
         *     uint64 timestamp;        (8 bytes)
         *     CtExtensions extensions; (2 bytes + ?)
         *   }
         */
        if (len < 43) {
            FUNC0(CT_F_O2I_SCT, CT_R_SCT_INVALID);
            goto err;
        }
        len -= 43;
        p++;
        sct->log_id = FUNC1(p, CT_V1_HASHLEN);
        if (sct->log_id == NULL)
            goto err;
        sct->log_id_len = CT_V1_HASHLEN;
        p += CT_V1_HASHLEN;

        FUNC4(p, sct->timestamp);

        FUNC5(p, len2);
        if (len < len2) {
            FUNC0(CT_F_O2I_SCT, CT_R_SCT_INVALID);
            goto err;
        }
        if (len2 > 0) {
            sct->ext = FUNC1(p, len2);
            if (sct->ext == NULL)
                goto err;
        }
        sct->ext_len = len2;
        p += len2;
        len -= len2;

        sig_len = FUNC6(sct, &p, len);
        if (sig_len <= 0) {
            FUNC0(CT_F_O2I_SCT, CT_R_SCT_INVALID);
            goto err;
        }
        len -= sig_len;
        *in = p + len;
    } else {
        /* If not V1 just cache encoding */
        sct->sct = FUNC1(p, len);
        if (sct->sct == NULL)
            goto err;
        sct->sct_len = len;
        *in = p + len;
    }

    if (psct != NULL) {
        FUNC2(*psct);
        *psct = sct;
    }

    return sct;
err:
    FUNC2(sct);
    return NULL;
}