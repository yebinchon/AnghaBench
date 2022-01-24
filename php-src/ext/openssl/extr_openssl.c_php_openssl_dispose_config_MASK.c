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
struct php_x509_request {int /*<<< orphan*/ * req_config; int /*<<< orphan*/ * global_config; int /*<<< orphan*/ * priv_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct php_x509_request * req) /* {{{ */
{
	if (req->priv_key) {
		FUNC1(req->priv_key);
		req->priv_key = NULL;
	}
	if (req->global_config) {
		FUNC0(req->global_config);
		req->global_config = NULL;
	}
	if (req->req_config) {
		FUNC0(req->req_config);
		req->req_config = NULL;
	}
}