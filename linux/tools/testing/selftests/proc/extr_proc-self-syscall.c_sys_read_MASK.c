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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_read ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void*,size_t) ; 

__attribute__((used)) static inline ssize_t FUNC1(int fd, void *buf, size_t len)
{
	return FUNC0(SYS_read, fd, buf, len);
}