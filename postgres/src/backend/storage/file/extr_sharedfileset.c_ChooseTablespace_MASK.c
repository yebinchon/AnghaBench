#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_3__ {size_t ntablespaces; int /*<<< orphan*/ * tablespaces; } ;
typedef  TYPE_1__ SharedFileSet ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 size_t FUNC0 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static Oid
FUNC2(const SharedFileSet *fileset, const char *name)
{
	uint32		hash = FUNC0((const unsigned char *) name, FUNC1(name));

	return fileset->tablespaces[hash % fileset->ntablespaces];
}