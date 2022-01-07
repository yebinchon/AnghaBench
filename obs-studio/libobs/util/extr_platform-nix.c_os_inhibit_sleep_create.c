
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_inhibit_info {int reason; int attr; int stop_event; int dbus; } ;
typedef int sigset_t ;
typedef struct os_inhibit_info os_inhibit_t ;


 int OS_EVENT_TYPE_AUTO ;
 int POSIX_SPAWN_SETSIGDEF ;
 int POSIX_SPAWN_SETSIGMASK ;
 int SIGPIPE ;
 int bstrdup (char const*) ;
 struct os_inhibit_info* bzalloc (int) ;
 int dbus_sleep_info_create () ;
 int os_event_init (int *,int ) ;
 int posix_spawnattr_init (int *) ;
 int posix_spawnattr_setflags (int *,int) ;
 int posix_spawnattr_setsigdefault (int *,int *) ;
 int posix_spawnattr_setsigmask (int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;

os_inhibit_t *os_inhibit_sleep_create(const char *reason)
{
 struct os_inhibit_info *info = bzalloc(sizeof(*info));
 sigset_t set;





 os_event_init(&info->stop_event, OS_EVENT_TYPE_AUTO);
 posix_spawnattr_init(&info->attr);

 sigemptyset(&set);
 posix_spawnattr_setsigmask(&info->attr, &set);
 sigaddset(&set, SIGPIPE);
 posix_spawnattr_setsigdefault(&info->attr, &set);
 posix_spawnattr_setflags(&info->attr, POSIX_SPAWN_SETSIGDEF |
            POSIX_SPAWN_SETSIGMASK);

 info->reason = bstrdup(reason);
 return info;
}
