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
typedef  int /*<<< orphan*/  RAGraph ;

/* Variables and functions */
 int BODY_COMMENTS ; 
 int BODY_OFFSETS ; 
 int BODY_SUMMARY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(const RAGraph *g) {
	int opts = 0;
	if (FUNC1 (g)) {
		opts |= BODY_OFFSETS;
	}
	if (FUNC0 (g)) {
		opts |= BODY_COMMENTS;
	}
	if (FUNC2 (g)) {
		opts |= BODY_SUMMARY;
	}
	return opts;
}