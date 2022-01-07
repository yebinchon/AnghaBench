
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_var {int dummy; } ;


 int memset (struct ep_var*,int ,int) ;

__attribute__((used)) static inline void ep_var_init(struct ep_var *epv)
{
 memset(epv, 0, sizeof(struct ep_var));
}
