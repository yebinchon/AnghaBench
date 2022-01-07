
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_tick_function {int arg; int (* func ) (int,int ) ;} ;


 int stub1 (int,int ) ;

__attribute__((used)) static void php_tick_iterator(void *d, void *arg)
{
 struct st_tick_function *data = (struct st_tick_function *)d;
 data->func(*((int *)arg), data->arg);
}
