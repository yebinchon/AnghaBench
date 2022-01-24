#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mysqli_write_t ;
typedef  scalar_t__ mysqli_read_t ;
struct TYPE_3__ {int /*<<< orphan*/  name; scalar_t__ write_func; scalar_t__ read_func; } ;
typedef  TYPE_1__ mysqli_prop_handler ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ mysqli_read_na ; 
 scalar_t__ mysqli_write_na ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(HashTable *h, const char *pname, size_t pname_len, mysqli_read_t r_func, mysqli_write_t w_func) {
	mysqli_prop_handler	p;

	p.name = FUNC1(pname, pname_len, 1);
	p.read_func = (r_func) ? r_func : mysqli_read_na;
	p.write_func = (w_func) ? w_func : mysqli_write_na;
	FUNC0(h, p.name, &p, sizeof(mysqli_prop_handler));
	FUNC2(p.name, 1);
}