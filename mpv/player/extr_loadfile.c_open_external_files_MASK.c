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
struct MPContext {int /*<<< orphan*/  playback_abort; } ;
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*,int,int /*<<< orphan*/ ) ; 
 char** FUNC1 (void*,char**) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct MPContext *mpctx, char **files,
                                enum stream_type filter)
{
    // Need a copy, because the option value could be mutated during iteration.
    void *tmp = FUNC3(NULL);
    files = FUNC1(tmp, files);

    for (int n = 0; files && files[n]; n++)
        FUNC0(mpctx, files[n], filter, mpctx->playback_abort);

    FUNC2(tmp);
}