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
typedef  int /*<<< orphan*/  OPENSSL_CSTRING ;

/* Variables and functions */
 size_t DB_name ; 
 unsigned long FUNC0 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static unsigned long FUNC1(const OPENSSL_CSTRING *a)
{
    return FUNC0(a[DB_name]);
}