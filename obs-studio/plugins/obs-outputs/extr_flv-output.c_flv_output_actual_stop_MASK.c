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
struct flv_output {int /*<<< orphan*/  output; scalar_t__ file; int /*<<< orphan*/  last_packet_ts; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct flv_output *stream, int code)
{
	FUNC4(&stream->active, false);

	if (stream->file) {
		FUNC6(stream->file, stream->last_packet_ts,
				FUNC5(stream->file));

		FUNC0(stream->file);
	}
	if (code) {
		FUNC3(stream->output, code);
	} else {
		FUNC2(stream->output);
	}

	FUNC1("FLV file output complete");
}