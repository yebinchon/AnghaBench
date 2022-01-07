
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct mp_log {int dummy; } ;
typedef int buffer ;
struct TYPE_2__ {char* (* item_name ) (void*) ;} ;
typedef TYPE_1__ AVClass ;


 int MPMAX (int,int ) ;
 int MPMIN (int ,int) ;
 int av_log_level_to_mp_level (int) ;
 struct mp_log* get_av_log (void*) ;
 int log_lock ;
 int log_mpv_instance ;
 int log_print_prefix ;
 int mp_msg (struct mp_log*,int,char*,char*) ;
 scalar_t__ mp_msg_test (struct mp_log*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int snprintf (char*,int,char*,char const*) ;
 int stderr ;
 int strlen (char const*) ;
 char* stub1 (void*) ;
 int vfprintf (int ,char const*,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void mp_msg_av_log_callback(void *ptr, int level, const char *fmt,
                                   va_list vl)
{
    AVClass *avc = ptr ? *(AVClass **)ptr : ((void*)0);
    int mp_level = av_log_level_to_mp_level(level);


    pthread_mutex_lock(&log_lock);

    if (!log_mpv_instance) {
        pthread_mutex_unlock(&log_lock);

        vfprintf(stderr, fmt, vl);
        return;
    }

    struct mp_log *log = get_av_log(ptr);

    if (mp_msg_test(log, mp_level)) {
        char buffer[4096] = "";
        int pos = 0;
        const char *prefix = avc ? avc->item_name(ptr) : ((void*)0);
        if (log_print_prefix && prefix)
            pos = snprintf(buffer, sizeof(buffer), "%s: ", prefix);
        log_print_prefix = fmt[strlen(fmt) - 1] == '\n';

        pos = MPMIN(MPMAX(pos, 0), sizeof(buffer));
        vsnprintf(buffer + pos, sizeof(buffer) - pos, fmt, vl);

        mp_msg(log, mp_level, "%s", buffer);
    }

    pthread_mutex_unlock(&log_lock);
}
