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
struct TYPE_3__ {scalar_t__ content; int /*<<< orphan*/  headers_original_case; int /*<<< orphan*/  headers; scalar_t__ query_string; scalar_t__ path_info; scalar_t__ path_translated; scalar_t__ vpath; scalar_t__ request_uri; } ;
typedef  TYPE_1__ php_cli_server_request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(php_cli_server_request *req) /* {{{ */
{
	if (req->request_uri) {
		FUNC0(req->request_uri, 1);
	}
	if (req->vpath) {
		FUNC0(req->vpath, 1);
	}
	if (req->path_translated) {
		FUNC0(req->path_translated, 1);
	}
	if (req->path_info) {
		FUNC0(req->path_info, 1);
	}
	if (req->query_string) {
		FUNC0(req->query_string, 1);
	}
	FUNC1(&req->headers);
	FUNC1(&req->headers_original_case);
	if (req->content) {
		FUNC0(req->content, 1);
	}
}