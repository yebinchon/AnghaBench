
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int dummy; } ;


 int ASSERT (int ) ;
 int D_TLS_DEBUG_MED ;
 int * env_set_get (struct env_set*,char*) ;
 int free (char*) ;
 char* gc_malloc (size_t const,int,int *) ;
 int msg (int ,char*,char const*) ;
 int openvpn_snprintf (char*,size_t const,char*,char const*,unsigned int) ;
 int setenv_str (struct env_set*,char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

void
setenv_str_incr(struct env_set *es, const char *name, const char *value)
{
    unsigned int counter = 1;
    const size_t tmpname_len = strlen(name) + 5;
    char *tmpname = gc_malloc(tmpname_len, 1, ((void*)0));
    strcpy(tmpname, name);
    while (((void*)0) != env_set_get(es, tmpname) && counter < 1000)
    {
        ASSERT(openvpn_snprintf(tmpname, tmpname_len, "%s_%u", name, counter));
        counter++;
    }
    if (counter < 1000)
    {
        setenv_str(es, tmpname, value);
    }
    else
    {
        msg(D_TLS_DEBUG_MED, "Too many same-name env variables, ignoring: %s", name);
    }
    free(tmpname);
}
