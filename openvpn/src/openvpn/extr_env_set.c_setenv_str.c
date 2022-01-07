
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int dummy; } ;


 int CC_NAME ;
 int CC_PRINT ;
 int setenv_str_ex (struct env_set*,char const*,char const*,int ,int ,int ,int ,int ,int ) ;

void
setenv_str(struct env_set *es, const char *name, const char *value)
{
    setenv_str_ex(es, name, value, CC_NAME, 0, 0, CC_PRINT, 0, 0);
}
