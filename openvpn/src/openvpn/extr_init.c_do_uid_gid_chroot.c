
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct context_0 {int uid_gid_chroot_set; int platform_state_user; int platform_state_group; scalar_t__ uid_gid_specified; } ;
struct TYPE_2__ {char const* selinux_context; scalar_t__ memstats_fn; scalar_t__ chroot_dir; } ;
struct context {scalar_t__ first_time; TYPE_1__ options; struct context_0* c0; } ;


 int M_ERR ;
 int M_INFO ;
 int msg (int ,char*,char const*) ;
 int mstats_open (scalar_t__) ;
 int platform_chroot (scalar_t__) ;
 int platform_group_set (int *) ;
 int platform_user_set (int *) ;
 int setcon (char const*) ;

__attribute__((used)) static void
do_uid_gid_chroot(struct context *c, bool no_delay)
{
    static const char why_not[] = "will be delayed because of --client, --pull, or --up-delay";
    struct context_0 *c0 = c->c0;

    if (c0 && !c0->uid_gid_chroot_set)
    {

        if (c->options.chroot_dir)
        {
            if (no_delay)
            {
                platform_chroot(c->options.chroot_dir);
            }
            else if (c->first_time)
            {
                msg(M_INFO, "NOTE: chroot %s", why_not);
            }
        }


        if (c0->uid_gid_specified)
        {
            if (no_delay)
            {
                platform_group_set(&c0->platform_state_group);
                platform_user_set(&c0->platform_state_user);
            }
            else if (c->first_time)
            {
                msg(M_INFO, "NOTE: UID/GID downgrade %s", why_not);
            }
        }
        if (no_delay)
        {
            c0->uid_gid_chroot_set = 1;
        }
    }
}
