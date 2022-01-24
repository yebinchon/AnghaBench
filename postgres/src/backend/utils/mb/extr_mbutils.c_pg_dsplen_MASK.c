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
struct TYPE_4__ {size_t encoding; } ;
struct TYPE_3__ {int (* dsplen ) (unsigned char const*) ;} ;

/* Variables and functions */
 TYPE_2__* DatabaseEncoding ; 
 TYPE_1__* pg_wchar_table ; 
 int FUNC0 (unsigned char const*) ; 

int
FUNC1(const char *mbstr)
{
	return pg_wchar_table[DatabaseEncoding->encoding].dsplen((const unsigned char *) mbstr);
}