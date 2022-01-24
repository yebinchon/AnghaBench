#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ std_strings; int /*<<< orphan*/  searchpath; int /*<<< orphan*/  encoding; TYPE_2__* ropt; } ;
struct TYPE_8__ {TYPE_1__ public; } ;
struct TYPE_7__ {scalar_t__ enable_row_security; scalar_t__ use_role; } ;
typedef  TYPE_2__ RestoreOptions ;
typedef  TYPE_3__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ArchiveHandle *AH)
{
	RestoreOptions *ropt = AH->public.ropt;

	/*
	 * Disable timeouts to allow for slow commands, idle parallel workers, etc
	 */
	FUNC0(AH, "SET statement_timeout = 0;\n");
	FUNC0(AH, "SET lock_timeout = 0;\n");
	FUNC0(AH, "SET idle_in_transaction_session_timeout = 0;\n");

	/* Select the correct character set encoding */
	FUNC0(AH, "SET client_encoding = '%s';\n",
			 FUNC2(AH->public.encoding));

	/* Select the correct string literal syntax */
	FUNC0(AH, "SET standard_conforming_strings = %s;\n",
			 AH->public.std_strings ? "on" : "off");

	/* Select the role to be used during restore */
	if (ropt && ropt->use_role)
		FUNC0(AH, "SET ROLE %s;\n", FUNC1(ropt->use_role));

	/* Select the dump-time search_path */
	if (AH->public.searchpath)
		FUNC0(AH, "%s", AH->public.searchpath);

	/* Make sure function checking is disabled */
	FUNC0(AH, "SET check_function_bodies = false;\n");

	/* Ensure that all valid XML data will be accepted */
	FUNC0(AH, "SET xmloption = content;\n");

	/* Avoid annoying notices etc */
	FUNC0(AH, "SET client_min_messages = warning;\n");
	if (!AH->public.std_strings)
		FUNC0(AH, "SET escape_string_warning = off;\n");

	/* Adjust row-security state */
	if (ropt && ropt->enable_row_security)
		FUNC0(AH, "SET row_security = on;\n");
	else
		FUNC0(AH, "SET row_security = off;\n");

	FUNC0(AH, "\n");
}