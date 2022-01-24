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
struct TYPE_2__ {int /*<<< orphan*/  length; scalar_t__ lexeme; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_1__ LexemeHashKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32
FUNC2(const void *key, Size keysize)
{
	const LexemeHashKey *l = (const LexemeHashKey *) key;

	return FUNC0(FUNC1((const unsigned char *) l->lexeme,
								   l->length));
}