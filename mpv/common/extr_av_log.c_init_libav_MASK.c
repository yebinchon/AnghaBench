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
struct mpv_global {int /*<<< orphan*/ * log; } ;

/* Variables and functions */
 char* LIB_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* log_decaudio ; 
 void* log_decvideo ; 
 void* log_demuxer ; 
 int /*<<< orphan*/  log_lock ; 
 struct mpv_global* log_mpv_instance ; 
 int /*<<< orphan*/ * log_root ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mp_msg_av_log_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mpv_global *global)
{
    FUNC4(&log_lock);
    if (!log_mpv_instance) {
        log_mpv_instance = global;
        log_root = FUNC3(NULL, global->log, LIB_PREFIX);
        log_decaudio = FUNC3(log_root, log_root, "audio");
        log_decvideo = FUNC3(log_root, log_root, "video");
        log_demuxer = FUNC3(log_root, log_root, "demuxer");
        FUNC0(mp_msg_av_log_callback);
    }
    FUNC5(&log_lock);

    FUNC2();

#if HAVE_LIBAVDEVICE
    avdevice_register_all();
#endif
}