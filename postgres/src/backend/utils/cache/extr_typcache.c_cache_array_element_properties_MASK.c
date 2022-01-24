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
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  hash_extended_proc; int /*<<< orphan*/  hash_proc; int /*<<< orphan*/  cmp_proc; int /*<<< orphan*/  eq_opr; int /*<<< orphan*/  type_id; } ;
typedef  TYPE_1__ TypeCacheEntry ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCFLAGS_CHECKED_ELEM_PROPERTIES ; 
 int /*<<< orphan*/  TCFLAGS_HAVE_ELEM_COMPARE ; 
 int /*<<< orphan*/  TCFLAGS_HAVE_ELEM_EQUALITY ; 
 int /*<<< orphan*/  TCFLAGS_HAVE_ELEM_EXTENDED_HASHING ; 
 int /*<<< orphan*/  TCFLAGS_HAVE_ELEM_HASHING ; 
 int TYPECACHE_CMP_PROC ; 
 int TYPECACHE_EQ_OPR ; 
 int TYPECACHE_HASH_EXTENDED_PROC ; 
 int TYPECACHE_HASH_PROC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(TypeCacheEntry *typentry)
{
	Oid			elem_type = FUNC1(typentry->type_id);

	if (FUNC0(elem_type))
	{
		TypeCacheEntry *elementry;

		elementry = FUNC2(elem_type,
									  TYPECACHE_EQ_OPR |
									  TYPECACHE_CMP_PROC |
									  TYPECACHE_HASH_PROC |
									  TYPECACHE_HASH_EXTENDED_PROC);
		if (FUNC0(elementry->eq_opr))
			typentry->flags |= TCFLAGS_HAVE_ELEM_EQUALITY;
		if (FUNC0(elementry->cmp_proc))
			typentry->flags |= TCFLAGS_HAVE_ELEM_COMPARE;
		if (FUNC0(elementry->hash_proc))
			typentry->flags |= TCFLAGS_HAVE_ELEM_HASHING;
		if (FUNC0(elementry->hash_extended_proc))
			typentry->flags |= TCFLAGS_HAVE_ELEM_EXTENDED_HASHING;
	}
	typentry->flags |= TCFLAGS_CHECKED_ELEM_PROPERTIES;
}