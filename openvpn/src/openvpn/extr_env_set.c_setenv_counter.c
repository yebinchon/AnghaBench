
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int dummy; } ;
typedef int counter_type ;
typedef int buf ;


 int counter_format ;
 int openvpn_snprintf (char*,int,int ,int ) ;
 int setenv_str (struct env_set*,char const*,char*) ;

void
setenv_counter(struct env_set *es, const char *name, counter_type value)
{
    char buf[64];
    openvpn_snprintf(buf, sizeof(buf), counter_format, value);
    setenv_str(es, name, buf);
}
