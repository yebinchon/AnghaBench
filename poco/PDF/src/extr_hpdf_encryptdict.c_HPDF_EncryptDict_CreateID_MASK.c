#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_14__ {int /*<<< orphan*/  encrypt_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  attr; } ;
struct TYPE_12__ {TYPE_1__* entries; } ;
struct TYPE_11__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_2__* HPDF_Xref ;
typedef  int /*<<< orphan*/  HPDF_UINT32 ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_MD5_CTX ;
typedef  TYPE_3__* HPDF_EncryptDict ;
typedef  TYPE_4__* HPDF_Encrypt ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  int /*<<< orphan*/  const HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_INFO_AUTHOR ; 
 int /*<<< orphan*/  HPDF_INFO_CREATOR ; 
 int /*<<< orphan*/  HPDF_INFO_KEYWORDS ; 
 int /*<<< orphan*/  HPDF_INFO_PRODUCER ; 
 int /*<<< orphan*/  HPDF_INFO_SUBJECT ; 
 int /*<<< orphan*/  HPDF_INFO_TITLE ; 
 char* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7  (HPDF_EncryptDict  dict,
                            HPDF_Dict         info,
                            HPDF_Xref         xref)
{
    HPDF_MD5_CTX ctx;
    HPDF_Encrypt attr = (HPDF_Encrypt)dict->attr;

    /* use the result of 'time' function to get random value.
     * when debugging, 'time' value is ignored.
     */
#ifndef LIBHPDF_DEBUG
    time_t t = FUNC5 (NULL);
#endif /* LIBHPDF_DEBUG */

    FUNC2 (&ctx);
    FUNC6 (xref);
    FUNC6 (info);

#ifndef LIBHPDF_DEBUG
    FUNC3(&ctx, (HPDF_BYTE *)&t, sizeof(t));

    /* create File Identifier from elements of Into dictionary. */
    if (info) {
        const char *s;
        HPDF_UINT len;

        /* Author */
        s = FUNC0 (info, HPDF_INFO_AUTHOR);
        if ((len = FUNC4 (s, -1)) > 0)
            FUNC3(&ctx, (const HPDF_BYTE *)s, len);

        /* Creator */
        s = FUNC0 (info, HPDF_INFO_CREATOR);
        if ((len = FUNC4 (s, -1)) > 0)
            FUNC3(&ctx, (const HPDF_BYTE *)s, len);

        /* Producer */
        s = FUNC0 (info, HPDF_INFO_PRODUCER);
        if ((len = FUNC4 (s, -1)) > 0)
            FUNC3(&ctx, (const HPDF_BYTE *)s, len);

        /* Title */
        s = FUNC0 (info, HPDF_INFO_TITLE);
        if ((len = FUNC4 (s, -1)) > 0)
            FUNC3(&ctx, (const HPDF_BYTE *)s, len);

        /* Subject */
        s = FUNC0 (info, HPDF_INFO_SUBJECT);
        if ((len = FUNC4 (s, -1)) > 0)
            FUNC3(&ctx, (const HPDF_BYTE *)s, len);

        /* Keywords */
        s = FUNC0 (info, HPDF_INFO_KEYWORDS);
        if ((len = FUNC4 (s, -1)) > 0)
            FUNC3(&ctx, (const HPDF_BYTE *)s, len);

        FUNC3(&ctx, (const HPDF_BYTE *)&(xref->entries->count),
                sizeof(HPDF_UINT32));

    }
#endif
    FUNC1(attr->encrypt_id, &ctx);
}