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
typedef  int /*<<< orphan*/  RStrBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,char const*,char const*,char const*) ; 

__attribute__((used)) static void FUNC1(RStrBuf *result, const char *consume, const char *o, const char *n) {
	FUNC0 (result, ":((%s&mask(%s&0x3f))<(%s&mask(%s&0x3f)))",
		n, consume, o, consume);
}