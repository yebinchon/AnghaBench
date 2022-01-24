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
struct TYPE_3__ {int /*<<< orphan*/  std_strings; int /*<<< orphan*/  encoding; } ;
typedef  int /*<<< orphan*/  PQExpBuffer ;
typedef  TYPE_1__ Archive ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(PQExpBuffer buffer, const char *reloptions,
						const char *prefix, Archive *fout)
{
	bool		res;

	res = FUNC0(buffer, reloptions, prefix, fout->encoding,
								fout->std_strings);
	if (!res)
		FUNC1("could not parse reloptions array");
}