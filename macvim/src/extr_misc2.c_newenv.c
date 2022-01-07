
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int elem ;


 int EXTRASIZE ;
 scalar_t__ alloc (unsigned int) ;
 char** environ ;
 int envsize ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
newenv()
{
    char **env, *elem;
    int i, esize;





    for (i = 0; environ[i]; i++)
 ;

    esize = i + EXTRASIZE + 1;
    env = (char **)alloc((unsigned)(esize * sizeof (elem)));
    if (env == ((void*)0))
 return -1;


    for (i = 0; environ[i]; i++)
    {
 elem = (char *)alloc((unsigned)(strlen(environ[i]) + 1));
 if (elem == ((void*)0))
     return -1;
 env[i] = elem;
 strcpy(elem, environ[i]);
    }


    env[i] = 0;
    environ = env;
    envsize = esize;
    return 0;
}
