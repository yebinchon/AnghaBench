#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct RELCACHECALLBACK {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* function ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
struct TYPE_16__ {int backend; int /*<<< orphan*/  node; } ;
struct TYPE_14__ {scalar_t__ dbId; } ;
struct TYPE_13__ {int backend_hi; scalar_t__ backend_lo; int /*<<< orphan*/  rnode; } ;
struct TYPE_12__ {scalar_t__ dbId; scalar_t__ relId; } ;
struct TYPE_11__ {scalar_t__ dbId; int /*<<< orphan*/  catId; } ;
struct TYPE_10__ {scalar_t__ dbId; int /*<<< orphan*/  hashValue; int /*<<< orphan*/  id; } ;
struct TYPE_15__ {scalar_t__ id; TYPE_5__ rm; TYPE_4__ sm; TYPE_3__ rc; TYPE_2__ cat; TYPE_1__ cc; } ;
typedef  TYPE_6__ SharedInvalidationMessage ;
typedef  TYPE_7__ RelFileNodeBackend ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ MyDatabaseId ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ SHAREDINVALCATALOG_ID ; 
 scalar_t__ SHAREDINVALRELCACHE_ID ; 
 scalar_t__ SHAREDINVALRELMAP_ID ; 
 scalar_t__ SHAREDINVALSMGR_ID ; 
 scalar_t__ SHAREDINVALSNAPSHOT_ID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int relcache_callback_count ; 
 struct RELCACHECALLBACK* relcache_callback_list ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC10(SharedInvalidationMessage *msg)
{
	if (msg->id >= 0)
	{
		if (msg->cc.dbId == MyDatabaseId || msg->cc.dbId == InvalidOid)
		{
			FUNC2();

			FUNC6(msg->cc.id, msg->cc.hashValue);

			FUNC0(msg->cc.id, msg->cc.hashValue);
		}
	}
	else if (msg->id == SHAREDINVALCATALOG_ID)
	{
		if (msg->cat.dbId == MyDatabaseId || msg->cat.dbId == InvalidOid)
		{
			FUNC2();

			FUNC1(msg->cat.catId);

			/* CatalogCacheFlushCatalog calls CallSyscacheCallbacks as needed */
		}
	}
	else if (msg->id == SHAREDINVALRELCACHE_ID)
	{
		if (msg->rc.dbId == MyDatabaseId || msg->rc.dbId == InvalidOid)
		{
			int			i;

			if (msg->rc.relId == InvalidOid)
				FUNC3();
			else
				FUNC4(msg->rc.relId);

			for (i = 0; i < relcache_callback_count; i++)
			{
				struct RELCACHECALLBACK *ccitem = relcache_callback_list + i;

				ccitem->function(ccitem->arg, msg->rc.relId);
			}
		}
	}
	else if (msg->id == SHAREDINVALSMGR_ID)
	{
		/*
		 * We could have smgr entries for relations of other databases, so no
		 * short-circuit test is possible here.
		 */
		RelFileNodeBackend rnode;

		rnode.node = msg->sm.rnode;
		rnode.backend = (msg->sm.backend_hi << 16) | (int) msg->sm.backend_lo;
		FUNC8(rnode);
	}
	else if (msg->id == SHAREDINVALRELMAP_ID)
	{
		/* We only care about our own database and shared catalogs */
		if (msg->rm.dbId == InvalidOid)
			FUNC5(true);
		else if (msg->rm.dbId == MyDatabaseId)
			FUNC5(false);
	}
	else if (msg->id == SHAREDINVALSNAPSHOT_ID)
	{
		/* We only care about our own database and shared catalogs */
		if (msg->rm.dbId == InvalidOid)
			FUNC2();
		else if (msg->rm.dbId == MyDatabaseId)
			FUNC2();
	}
	else
		FUNC7(FATAL, "unrecognized SI message ID: %d", msg->id);
}