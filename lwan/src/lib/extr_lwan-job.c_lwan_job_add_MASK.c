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
struct job {int (* cb ) (void*) ;int /*<<< orphan*/  jobs; void* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (void*)) ; 
 struct job* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct job*) ; 
 int /*<<< orphan*/  jobs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue_mutex ; 

void FUNC9(bool (*cb)(void *data), void *data)
{
    FUNC1(cb);

    struct job *job = FUNC2(1, sizeof(*job));
    if (!job)
        FUNC5("calloc");

    job->cb = cb;
    job->data = data;

    if (FUNC0(!FUNC7(&queue_mutex))) {
        FUNC4(&jobs, &job->jobs);
        FUNC8(&queue_mutex);
    } else {
        FUNC6("Couldn't lock job mutex");
        FUNC3(job);
    }
}