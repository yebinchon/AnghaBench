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
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(php_stream *stream, char *buffer, size_t buffer_size)
{
	buffer[0] = '\0'; /* in case read fails to read anything */
	while (FUNC1(stream, buffer, buffer_size-1) &&
		   !(FUNC0((int) buffer[0]) && FUNC0((int) buffer[1]) &&
			 FUNC0((int) buffer[2]) && buffer[3] == ' '));
	return FUNC2(buffer, NULL, 10);
}