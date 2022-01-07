
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int dummy; } ;
typedef int buf ;


 int openvpn_snprintf (char*,int,char*,int) ;
 int setenv_str (struct env_set*,char const*,char*) ;

void
setenv_int(struct env_set *es, const char *name, int value)
{
    char buf[64];
    openvpn_snprintf(buf, sizeof(buf), "%d", value);
    setenv_str(es, name, buf);
}
