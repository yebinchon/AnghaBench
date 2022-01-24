#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int id; int /*<<< orphan*/ * method; } ;
typedef  TYPE_1__ SSL_COMP ;
typedef  int /*<<< orphan*/  COMP_METHOD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_DISABLE ; 
 int /*<<< orphan*/  CRYPTO_MEM_CHECK_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ NID_undef ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD ; 
 int /*<<< orphan*/  SSL_R_COMPRESSION_ID_NOT_WITHIN_PRIVATE_RANGE ; 
 int /*<<< orphan*/  SSL_R_DUPLICATE_COMPRESSION_ID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * ssl_comp_methods ; 

int FUNC8(int id, COMP_METHOD *cm)
{
    SSL_COMP *comp;

    if (cm == NULL || FUNC0(cm) == NID_undef)
        return 1;

    /*-
     * According to draft-ietf-tls-compression-04.txt, the
     * compression number ranges should be the following:
     *
     *   0 to  63:  methods defined by the IETF
     *  64 to 192:  external party methods assigned by IANA
     * 193 to 255:  reserved for private use
     */
    if (id < 193 || id > 255) {
        FUNC4(SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD,
               SSL_R_COMPRESSION_ID_NOT_WITHIN_PRIVATE_RANGE);
        return 1;
    }

    FUNC1(CRYPTO_MEM_CHECK_DISABLE);
    comp = FUNC3(sizeof(*comp));
    if (comp == NULL) {
        FUNC1(CRYPTO_MEM_CHECK_ENABLE);
        FUNC4(SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD, ERR_R_MALLOC_FAILURE);
        return 1;
    }

    comp->id = id;
    comp->method = cm;
    FUNC5();
    if (ssl_comp_methods && FUNC6(ssl_comp_methods, comp) >= 0) {
        FUNC2(comp);
        FUNC1(CRYPTO_MEM_CHECK_ENABLE);
        FUNC4(SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD,
               SSL_R_DUPLICATE_COMPRESSION_ID);
        return 1;
    }
    if (ssl_comp_methods == NULL || !FUNC7(ssl_comp_methods, comp)) {
        FUNC2(comp);
        FUNC1(CRYPTO_MEM_CHECK_ENABLE);
        FUNC4(SSL_F_SSL_COMP_ADD_COMPRESSION_METHOD, ERR_R_MALLOC_FAILURE);
        return 1;
    }
    FUNC1(CRYPTO_MEM_CHECK_ENABLE);
    return 0;
}