#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * (* dupctx ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {int /*<<< orphan*/ * data; TYPE_4__* meth; } ;
typedef  TYPE_1__ EVP_MAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_F_EVP_MAC_CTX_DUP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

EVP_MAC_CTX *FUNC6(const EVP_MAC_CTX *src)
{
    EVP_MAC_CTX *dst;

    if (src->data == NULL)
        return NULL;

    dst = FUNC4(sizeof(*dst));
    if (dst == NULL) {
        FUNC2(EVP_F_EVP_MAC_CTX_DUP, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    *dst = *src;
    if (!FUNC1(dst->meth)) {
        FUNC2(EVP_F_EVP_MAC_CTX_DUP, ERR_R_MALLOC_FAILURE);
        FUNC3(dst);
        return NULL;
    }

    dst->data = src->meth->dupctx(src->data);
    if (dst->data == NULL) {
        FUNC0(dst);
        return NULL;
    }

    return dst;
}