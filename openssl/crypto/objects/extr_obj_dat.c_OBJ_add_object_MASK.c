#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int type; TYPE_1__* obj; } ;
struct TYPE_11__ {scalar_t__ length; int flags; int nid; int /*<<< orphan*/ * ln; int /*<<< orphan*/ * sn; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ASN1_OBJECT ;
typedef  TYPE_2__ ADDED_OBJ ;

/* Variables and functions */
 size_t ADDED_DATA ; 
 size_t ADDED_LNAME ; 
 size_t ADDED_NID ; 
 size_t ADDED_SNAME ; 
 int ASN1_OBJECT_FLAG_DYNAMIC ; 
 int ASN1_OBJECT_FLAG_DYNAMIC_DATA ; 
 int ASN1_OBJECT_FLAG_DYNAMIC_STRINGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int NID_undef ; 
 int /*<<< orphan*/  OBJ_F_OBJ_ADD_OBJECT ; 
 TYPE_1__* FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/ * added ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int FUNC7(const ASN1_OBJECT *obj)
{
    ASN1_OBJECT *o;
    ADDED_OBJ *ao[4] = { NULL, NULL, NULL, NULL }, *aop;
    int i;

    if (added == NULL)
        if (!FUNC5())
            return 0;
    if ((o = FUNC1(obj)) == NULL)
        goto err;
    if ((ao[ADDED_NID] = FUNC4(sizeof(*ao[0]))) == NULL)
        goto err2;
    if ((o->length != 0) && (obj->data != NULL))
        if ((ao[ADDED_DATA] = FUNC4(sizeof(*ao[0]))) == NULL)
            goto err2;
    if (o->sn != NULL)
        if ((ao[ADDED_SNAME] = FUNC4(sizeof(*ao[0]))) == NULL)
            goto err2;
    if (o->ln != NULL)
        if ((ao[ADDED_LNAME] = FUNC4(sizeof(*ao[0]))) == NULL)
            goto err2;

    for (i = ADDED_DATA; i <= ADDED_NID; i++) {
        if (ao[i] != NULL) {
            ao[i]->type = i;
            ao[i]->obj = o;
            aop = FUNC6(added, ao[i]);
            /* memory leak, but should not normally matter */
            FUNC3(aop);
        }
    }
    o->flags &=
        ~(ASN1_OBJECT_FLAG_DYNAMIC | ASN1_OBJECT_FLAG_DYNAMIC_STRINGS |
          ASN1_OBJECT_FLAG_DYNAMIC_DATA);

    return o->nid;
 err2:
    FUNC2(OBJ_F_OBJ_ADD_OBJECT, ERR_R_MALLOC_FAILURE);
 err:
    for (i = ADDED_DATA; i <= ADDED_NID; i++)
        FUNC3(ao[i]);
    FUNC0(o);
    return NID_undef;
}