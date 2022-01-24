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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {scalar_t__ cStreams; } ;
struct TYPE_8__ {TYPE_2__* streams; TYPE_1__ Parser; } ;
struct TYPE_7__ {int /*<<< orphan*/  packet_queued; int /*<<< orphan*/ * sample; int /*<<< orphan*/ * thread; } ;
typedef  TYPE_2__ StreamData ;
typedef  TYPE_3__* LPVOID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_3__ AVISplitterImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static HRESULT FUNC7(LPVOID iface)
{
    AVISplitterImpl *This = iface;
    DWORD x;
    ULONG ref;

    for (x = 0; x < This->Parser.cStreams; ++x)
    {
        StreamData *stream = This->streams + x;

        FUNC4("Waiting for %u to terminate\n", x);
        /* Make the thread return first */
        FUNC3(stream->packet_queued);
        FUNC6(FUNC5(stream->thread, 100000) != WAIT_TIMEOUT);
        FUNC0(stream->thread);
        stream->thread = NULL;

        if (stream->sample)
        {
            ref = FUNC1(stream->sample);
            FUNC6(ref == 0);
        }
        stream->sample = NULL;

        FUNC2(stream->packet_queued);
    }
    FUNC4("All threads are now terminated\n");

    return S_OK;
}