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
struct packet_id_persist_file_image {scalar_t__ time; scalar_t__ id; } ;
struct packet_id_persist {scalar_t__ time; scalar_t__ time_last_written; scalar_t__ id; scalar_t__ id_last_written; int /*<<< orphan*/  filename; int /*<<< orphan*/  fd; } ;
struct gc_arena {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  image ;

/* Variables and functions */
 int D_PID_PERSIST ; 
 int /*<<< orphan*/  D_PID_PERSIST_DEBUG ; 
 int M_ERRNO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gc_arena*) ; 
 struct gc_arena FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct packet_id_persist*) ; 
 int /*<<< orphan*/  FUNC6 (struct packet_id_persist*,struct gc_arena*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct packet_id_persist_file_image*,int) ; 

void
FUNC8(struct packet_id_persist *p)
{
    if (FUNC5(p) && p->time && (p->time != p->time_last_written
                                                    || p->id != p->id_last_written))
    {
        struct packet_id_persist_file_image image;
        ssize_t n;
        off_t seek_ret;
        struct gc_arena gc = FUNC2();

        image.time = p->time;
        image.id = p->id;
        seek_ret = FUNC3(p->fd, (off_t)0, SEEK_SET);
        if (seek_ret == (off_t)0)
        {
            n = FUNC7(p->fd, &image, sizeof(image));
            if (n == sizeof(image))
            {
                p->time_last_written = p->time;
                p->id_last_written = p->id;
                FUNC0(D_PID_PERSIST_DEBUG, "PID Persist Write to %s: %s",
                     p->filename, FUNC6(p, &gc));
            }
            else
            {
                FUNC4(D_PID_PERSIST | M_ERRNO,
                    "Cannot write to --replay-persist file %s",
                    p->filename);
            }
        }
        else
        {
            FUNC4(D_PID_PERSIST | M_ERRNO,
                "Cannot seek to beginning of --replay-persist file %s",
                p->filename);
        }
        FUNC1(&gc);
    }
}