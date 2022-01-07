
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expander_data {size_t env_in_len; int env_in; } ;


 int brealloc (int ,int) ;

__attribute__((used)) static void resize_env_in_buffer(struct expander_data *cd, size_t len)
{
 cd->env_in_len = len;
 cd->env_in = brealloc(cd->env_in, cd->env_in_len * sizeof(float));
}
