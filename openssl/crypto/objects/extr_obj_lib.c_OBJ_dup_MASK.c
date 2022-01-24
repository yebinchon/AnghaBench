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
struct TYPE_6__ {int flags; scalar_t__ length; int /*<<< orphan*/ * sn; int /*<<< orphan*/ * ln; int /*<<< orphan*/  nid; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ASN1_OBJECT ;

/* Variables and functions */
 int ASN1_OBJECT_FLAG_DYNAMIC ; 
 int ASN1_OBJECT_FLAG_DYNAMIC_DATA ; 
 int ASN1_OBJECT_FLAG_DYNAMIC_STRINGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  OBJ_F_OBJ_DUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 

ASN1_OBJECT *FUNC5(const ASN1_OBJECT *o)
{
    ASN1_OBJECT *r;

    if (o == NULL)
        return NULL;
    /* If object isn't dynamic it's an internal OID which is never freed */
    if (!(o->flags & ASN1_OBJECT_FLAG_DYNAMIC))
        return (ASN1_OBJECT *)o;

    r = FUNC1();
    if (r == NULL) {
        FUNC2(OBJ_F_OBJ_DUP, ERR_R_ASN1_LIB);
        return NULL;
    }

    /* Set dynamic flags so everything gets freed up on error */

    r->flags = o->flags | (ASN1_OBJECT_FLAG_DYNAMIC |
                           ASN1_OBJECT_FLAG_DYNAMIC_STRINGS |
                           ASN1_OBJECT_FLAG_DYNAMIC_DATA);

    if (o->length > 0 && (r->data = FUNC3(o->data, o->length)) == NULL)
        goto err;

    r->length = o->length;
    r->nid = o->nid;

    if (o->ln != NULL && (r->ln = FUNC4(o->ln)) == NULL)
        goto err;

    if (o->sn != NULL && (r->sn = FUNC4(o->sn)) == NULL)
        goto err;

    return r;
 err:
    FUNC0(r);
    FUNC2(OBJ_F_OBJ_DUP, ERR_R_MALLOC_FAILURE);
    return NULL;
}