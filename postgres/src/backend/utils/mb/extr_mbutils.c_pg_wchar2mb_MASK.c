#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pg_wchar ;
struct TYPE_4__ {size_t encoding; } ;
struct TYPE_3__ {int (* wchar2mb_with_len ) (int /*<<< orphan*/  const*,unsigned char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_2__* DatabaseEncoding ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* pg_wchar_table ; 
 int FUNC1 (int /*<<< orphan*/  const*,unsigned char*,int /*<<< orphan*/ ) ; 

int
FUNC2(const pg_wchar *from, char *to)
{
	return pg_wchar_table[DatabaseEncoding->encoding].wchar2mb_with_len(from, (unsigned char *) to, FUNC0(from));
}