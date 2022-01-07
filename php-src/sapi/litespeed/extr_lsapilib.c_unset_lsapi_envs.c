
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** _NSGetEnviron () ;
 char** environ ;
 int s_uid ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void unset_lsapi_envs(void)
{
    char **env;



    env = environ;

    while( env != ((void*)0) && *env != ((void*)0) )
    {
        if (!strncmp(*env, "LSAPI_", 6) || !strncmp( *env, "PHP_LSAPI_", 10 )
            || (!strncmp( *env, "PHPRC=", 6 )&&(!s_uid)))
        {
            char ** del = env;
            do
                *del = del[1];
            while( *del++ );
        }
        else
            ++env;
    }
}
