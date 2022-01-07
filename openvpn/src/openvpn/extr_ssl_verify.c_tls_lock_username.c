
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_multi {scalar_t__ locked_username; } ;


 int D_TLS_ERRORS ;
 int msg (int ,char*,scalar_t__,int ) ;
 int np (char const*) ;
 scalar_t__ strcmp (char const*,scalar_t__) ;
 scalar_t__ string_alloc (char const*,int *) ;
 int tls_deauthenticate (struct tls_multi*) ;

__attribute__((used)) static bool
tls_lock_username(struct tls_multi *multi, const char *username)
{
    if (multi->locked_username)
    {
        if (!username || strcmp(username, multi->locked_username))
        {
            msg(D_TLS_ERRORS, "TLS Auth Error: username attempted to change from '%s' to '%s' -- tunnel disabled",
                multi->locked_username,
                np(username));


            tls_deauthenticate(multi);
            return 0;
        }
    }
    else
    {
        if (username)
        {
            multi->locked_username = string_alloc(username, ((void*)0));
        }
    }
    return 1;
}
