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

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,char*,char const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  static_client_encoding ; 
 int /*<<< orphan*/  static_std_strings ; 

size_t
FUNC1(char *to, const char *from, size_t length)
{
	return FUNC0(NULL, to, from, length, NULL,
								  static_client_encoding,
								  static_std_strings);
}