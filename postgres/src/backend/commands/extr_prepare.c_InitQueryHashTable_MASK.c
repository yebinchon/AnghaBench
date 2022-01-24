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
struct TYPE_4__ {int entrysize; int /*<<< orphan*/  keysize; } ;
typedef  int /*<<< orphan*/  PreparedStatement ;
typedef  TYPE_1__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_ELEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prepared_queries ; 

__attribute__((used)) static void
FUNC2(void)
{
	HASHCTL		hash_ctl;

	FUNC0(&hash_ctl, 0, sizeof(hash_ctl));

	hash_ctl.keysize = NAMEDATALEN;
	hash_ctl.entrysize = sizeof(PreparedStatement);

	prepared_queries = FUNC1("Prepared Queries",
								   32,
								   &hash_ctl,
								   HASH_ELEM);
}