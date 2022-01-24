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
typedef  int /*<<< orphan*/  pg_wchar ;
struct TYPE_2__ {int (* wchar2mb_with_len ) (int /*<<< orphan*/  const*,unsigned char*,int) ;} ;

/* Variables and functions */
 TYPE_1__* pg_wchar_table ; 
 int FUNC0 (int /*<<< orphan*/  const*,unsigned char*,int) ; 

int
FUNC1(int encoding,
							  const pg_wchar *from, char *to, int len)
{
	return pg_wchar_table[encoding].wchar2mb_with_len(from, (unsigned char *) to, len);
}