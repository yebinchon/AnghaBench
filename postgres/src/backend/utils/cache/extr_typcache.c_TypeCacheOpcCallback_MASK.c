#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {scalar_t__ flags; } ;
typedef  TYPE_1__ TypeCacheEntry ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  TypeCacheHash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(Datum arg, int cacheid, uint32 hashvalue)
{
	HASH_SEQ_STATUS status;
	TypeCacheEntry *typentry;

	/* TypeCacheHash must exist, else this callback wouldn't be registered */
	FUNC0(&status, TypeCacheHash);
	while ((typentry = (TypeCacheEntry *) FUNC1(&status)) != NULL)
	{
		/* Reset equality/comparison/hashing validity information */
		typentry->flags = 0;
	}
}