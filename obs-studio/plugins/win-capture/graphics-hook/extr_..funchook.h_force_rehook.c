
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_hook {int dummy; } ;


 int do_hook (struct func_hook*,int) ;

__attribute__((used)) static inline void force_rehook(struct func_hook *hook)
{
 do_hook(hook, 1);
}
