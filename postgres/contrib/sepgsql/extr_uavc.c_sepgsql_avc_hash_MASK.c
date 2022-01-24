#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32 ;
typedef  int uint16 ;

/* Variables and functions */
 int FUNC0 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static uint32
FUNC2(const char *scontext, const char *tcontext, uint16 tclass)
{
	return FUNC0((const unsigned char *) scontext, FUNC1(scontext))
		^ FUNC0((const unsigned char *) tcontext, FUNC1(tcontext))
		^ tclass;
}