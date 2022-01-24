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
typedef  int /*<<< orphan*/  hash_ctl ;
struct TYPE_4__ {int keysize; int entrysize; int /*<<< orphan*/  hcxt; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ HASHCTL ;

/* Variables and functions */
 int HASH_BLOBS ; 
 int HASH_CONTEXT ; 
 int HASH_ELEM ; 
 int /*<<< orphan*/  TopTransactionContext ; 
 int /*<<< orphan*/  enum_blacklist ; 
 int /*<<< orphan*/  FUNC0 (char*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	HASHCTL		hash_ctl;

	FUNC1(&hash_ctl, 0, sizeof(hash_ctl));
	hash_ctl.keysize = sizeof(Oid);
	hash_ctl.entrysize = sizeof(Oid);
	hash_ctl.hcxt = TopTransactionContext;
	enum_blacklist = FUNC0("Enum value blacklist",
								 32,
								 &hash_ctl,
								 HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);
}