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
typedef  int /*<<< orphan*/  pg_wchar ;
typedef  int /*<<< orphan*/  pg_unicode_decomposition ;

/* Variables and functions */
 int /*<<< orphan*/  UnicodeDecompMain ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conv_compare ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pg_unicode_decomposition *
FUNC2(pg_wchar code)
{
	return FUNC0(&(code),
				   UnicodeDecompMain,
				   FUNC1(UnicodeDecompMain),
				   sizeof(pg_unicode_decomposition),
				   conv_compare);
}