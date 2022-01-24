#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pubtruncate; int /*<<< orphan*/  pubdelete; int /*<<< orphan*/  pubupdate; int /*<<< orphan*/  pubinsert; int /*<<< orphan*/  puballtables; int /*<<< orphan*/  pubname; } ;
struct TYPE_5__ {int /*<<< orphan*/  pubtruncate; int /*<<< orphan*/  pubdelete; int /*<<< orphan*/  pubupdate; int /*<<< orphan*/  pubinsert; } ;
struct TYPE_6__ {TYPE_1__ pubactions; int /*<<< orphan*/  alltables; int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;
typedef  TYPE_2__ Publication ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_publication ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUBLICATIONOID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

Publication *
FUNC9(Oid pubid)
{
	HeapTuple	tup;
	Publication *pub;
	Form_pg_publication pubform;

	tup = FUNC5(PUBLICATIONOID, FUNC3(pubid));

	if (!FUNC1(tup))
		FUNC6(ERROR, "cache lookup failed for publication %u", pubid);

	pubform = (Form_pg_publication) FUNC0(tup);

	pub = (Publication *) FUNC7(sizeof(Publication));
	pub->oid = pubid;
	pub->name = FUNC8(FUNC2(pubform->pubname));
	pub->alltables = pubform->puballtables;
	pub->pubactions.pubinsert = pubform->pubinsert;
	pub->pubactions.pubupdate = pubform->pubupdate;
	pub->pubactions.pubdelete = pubform->pubdelete;
	pub->pubactions.pubtruncate = pubform->pubtruncate;

	FUNC4(tup);

	return pub;
}