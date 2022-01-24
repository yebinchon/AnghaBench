#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mime_type; scalar_t__ ext; } ;
typedef  TYPE_1__ php_cli_server_ext_mime_type_pair ;
struct TYPE_6__ {int /*<<< orphan*/  extension_mime_types; } ;
typedef  TYPE_2__ php_cli_server ;

/* Variables and functions */
 int SUCCESS ; 
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,size_t,void*) ; 

__attribute__((used)) static int FUNC3(php_cli_server *server, const php_cli_server_ext_mime_type_pair *mime_type_map) /* {{{ */
{
	const php_cli_server_ext_mime_type_pair *pair;

	FUNC1(&server->extension_mime_types, 0, NULL, NULL, 1);

	for (pair = mime_type_map; pair->ext; pair++) {
		size_t ext_len = FUNC0(pair->ext);
		FUNC2(&server->extension_mime_types, pair->ext, ext_len, (void*)pair->mime_type);
	}

	return SUCCESS;
}