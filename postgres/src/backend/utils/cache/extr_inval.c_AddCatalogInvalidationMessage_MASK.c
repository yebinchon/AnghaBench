#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg ;
struct TYPE_9__ {int /*<<< orphan*/  cclist; } ;
struct TYPE_7__ {void* catId; void* dbId; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_1__ cat; } ;
typedef  TYPE_2__ SharedInvalidationMessage ;
typedef  void* Oid ;
typedef  TYPE_3__ InvalidationListHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  SHAREDINVALCATALOG_ID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC2(InvalidationListHeader *hdr,
							  Oid dbId, Oid catId)
{
	SharedInvalidationMessage msg;

	msg.cat.id = SHAREDINVALCATALOG_ID;
	msg.cat.dbId = dbId;
	msg.cat.catId = catId;
	/* check AddCatcacheInvalidationMessage() for an explanation */
	FUNC1(&msg, sizeof(msg));

	FUNC0(&hdr->cclist, &msg);
}