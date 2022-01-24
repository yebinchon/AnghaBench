#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pkey_id; int pkey_flags; int /*<<< orphan*/ * pem_str; } ;
typedef  TYPE_1__ EVP_PKEY_ASN1_METHOD ;

/* Variables and functions */
 int ASN1_PKEY_ALIAS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__** standard_methods ; 

__attribute__((used)) static int FUNC6(void)
{
    const EVP_PKEY_ASN1_METHOD **tmp;
    int last_pkey_id = -1;
    size_t i;
    int ok = 1;

    for (tmp = standard_methods, i = 0; i < FUNC1(standard_methods);
         i++, tmp++) {
        if ((*tmp)->pkey_id < last_pkey_id) {
            last_pkey_id = 0;
            break;
        }
        last_pkey_id = (*tmp)->pkey_id;

        /*
         * One of the following must be true:
         *
         * pem_str == NULL AND ASN1_PKEY_ALIAS is set
         * pem_str != NULL AND ASN1_PKEY_ALIAS is clear
         *
         * Anything else is an error and may lead to a corrupt ASN1 method table
         */
        if (!FUNC5(((*tmp)->pem_str == NULL && ((*tmp)->pkey_flags & ASN1_PKEY_ALIAS) != 0)
                       || ((*tmp)->pem_str != NULL && ((*tmp)->pkey_flags & ASN1_PKEY_ALIAS) == 0))) {
            FUNC4("asn1 standard methods: Index %zu, pkey ID %d, Name=%s",
                      i, (*tmp)->pkey_id, FUNC0((*tmp)->pkey_id));
            ok = 0;
        }
    }

    if (FUNC3(last_pkey_id, 0)) {
        FUNC2("asn1 standard methods: Table order OK");
        return ok;
    }

    FUNC4("asn1 standard methods: out of order");
    for (tmp = standard_methods, i = 0; i < FUNC1(standard_methods);
         i++, tmp++)
        FUNC4("asn1 standard methods: Index %zu, pkey ID %d, Name=%s",
                  i, (*tmp)->pkey_id, FUNC0((*tmp)->pkey_id));

    return 0;
}