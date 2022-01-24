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
typedef  TYPE_1__* pmbedtls_session ;
typedef  int /*<<< orphan*/  mbedtls_session ;
struct TYPE_3__ {int /*<<< orphan*/  pkey; int /*<<< orphan*/  clicert; int /*<<< orphan*/  cacert; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static pmbedtls_session FUNC3(void)
{
	pmbedtls_session session = (pmbedtls_session)FUNC2(sizeof(mbedtls_session));
	if (session){
		FUNC1(&session->cacert);
		FUNC1(&session->clicert);
		FUNC0(&session->pkey);
//		mbedtls_entropy_init(&session->entropy);
	}
	return session;
}