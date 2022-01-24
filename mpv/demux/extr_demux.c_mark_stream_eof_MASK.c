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
struct demux_stream {int eof; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demux_stream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct demux_stream*) ; 
 int /*<<< orphan*/  FUNC2 (struct demux_stream*) ; 

__attribute__((used)) static void FUNC3(struct demux_stream *ds)
{
    if (!ds->eof) {
        ds->eof = true;
        FUNC0(ds, NULL);
        FUNC1(ds);
        FUNC2(ds);
    }
}