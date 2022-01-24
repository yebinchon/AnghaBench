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
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  rpcprog_t ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,char const*,int /*<<< orphan*/ *) ; 

CLIENT *
FUNC1(const char *hostname, const rpcprog_t prog, const rpcvers_t vers,
    const char *nettype)
{

	return (FUNC0(hostname, prog, vers, nettype, NULL));
}