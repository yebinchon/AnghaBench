
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ php_random_globals ;


 int close (int) ;

__attribute__((used)) static void random_globals_dtor(php_random_globals *random_globals_p)
{
 if (random_globals_p->fd > 0) {
  close(random_globals_p->fd);
  random_globals_p->fd = -1;
 }
}
