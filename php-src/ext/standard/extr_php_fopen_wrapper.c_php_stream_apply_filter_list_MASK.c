#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream_filter ;
struct TYPE_4__ {int /*<<< orphan*/  writefilters; int /*<<< orphan*/  readfilters; } ;
typedef  TYPE_1__ php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(php_stream *stream, char *filterlist, int read_chain, int write_chain) /* {{{ */
{
	char *p, *token = NULL;
	php_stream_filter *temp_filter;

	p = FUNC4(filterlist, "|", &token);
	while (p) {
		FUNC5(p, FUNC6(p));
		if (read_chain) {
			if ((temp_filter = FUNC2(p, NULL, FUNC3(stream)))) {
				FUNC1(&stream->readfilters, temp_filter);
			} else {
				FUNC0(NULL, E_WARNING, "Unable to create filter (%s)", p);
			}
		}
		if (write_chain) {
			if ((temp_filter = FUNC2(p, NULL, FUNC3(stream)))) {
				FUNC1(&stream->writefilters, temp_filter);
			} else {
				FUNC0(NULL, E_WARNING, "Unable to create filter (%s)", p);
			}
		}
		p = FUNC4(NULL, "|", &token);
	}
}