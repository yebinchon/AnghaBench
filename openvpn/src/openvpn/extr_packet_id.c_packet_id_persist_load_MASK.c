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
struct packet_id_persist_file_image {int /*<<< orphan*/  id; int /*<<< orphan*/  time; } ;
struct packet_id_persist {int fd; char const* filename; int /*<<< orphan*/  id_last_written; int /*<<< orphan*/  id; int /*<<< orphan*/  time_last_written; int /*<<< orphan*/  time; } ;
struct gc_arena {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  image ;

/* Variables and functions */
 int D_PID_PERSIST ; 
 int /*<<< orphan*/  D_PID_PERSIST_DEBUG ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 int M_ERR ; 
 int M_ERRNO ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_arena*) ; 
 struct gc_arena FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct packet_id_persist*) ; 
 int /*<<< orphan*/  FUNC6 (struct packet_id_persist*,struct gc_arena*) ; 
 int FUNC7 (char const*,int,int) ; 
 int FUNC8 (int,struct packet_id_persist_file_image*,int) ; 

void
FUNC9(struct packet_id_persist *p, const char *filename)
{
    struct gc_arena gc = FUNC3();
    if (!FUNC5(p))
    {
        /* open packet-id persist file for both read and write */
        p->fd = FUNC7(filename,
                              O_CREAT | O_RDWR | O_BINARY,
                              S_IRUSR | S_IWUSR);
        if (p->fd == -1)
        {
            FUNC4(D_PID_PERSIST | M_ERRNO,
                "Cannot open --replay-persist file %s for read/write",
                filename);
        }
        else
        {
            struct packet_id_persist_file_image image;
            ssize_t n;

#if defined(HAVE_FLOCK) && defined(LOCK_EX) && defined(LOCK_NB)
            if (flock(p->fd, LOCK_EX | LOCK_NB))
            {
                msg(M_ERR, "Cannot obtain exclusive lock on --replay-persist file %s", filename);
            }
#endif

            p->filename = filename;
            n = FUNC8(p->fd, &image, sizeof(image));
            if (n == sizeof(image))
            {
                p->time = p->time_last_written = image.time;
                p->id = p->id_last_written = image.id;
                FUNC0(D_PID_PERSIST_DEBUG, "PID Persist Read from %s: %s",
                     p->filename, FUNC6(p, &gc));
            }
            else if (n == -1)
            {
                FUNC4(D_PID_PERSIST | M_ERRNO,
                    "Read error on --replay-persist file %s",
                    p->filename);
            }
        }
    }
    FUNC2(&gc);
}