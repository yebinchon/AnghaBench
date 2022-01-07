
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_pass {int nocache; } ;


 int M_WARN ;
 int msg (int ,char*) ;
 int secure_memzero (struct user_pass*,int) ;

void
purge_user_pass(struct user_pass *up, const bool force)
{
    const bool nocache = up->nocache;
    static bool warn_shown = 0;
    if (nocache || force)
    {
        secure_memzero(up, sizeof(*up));
        up->nocache = nocache;
    }




    else if (!warn_shown)
    {
        msg(M_WARN, "WARNING: this configuration may cache passwords in memory -- use the auth-nocache option to prevent this");
        warn_shown = 1;
    }
}
