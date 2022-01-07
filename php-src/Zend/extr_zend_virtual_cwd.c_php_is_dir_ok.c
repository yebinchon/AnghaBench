
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_mode; } ;
typedef TYPE_1__ zend_stat_t ;
struct TYPE_6__ {int cwd; } ;
typedef TYPE_2__ cwd_state ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ php_sys_stat (int ,TYPE_1__*) ;

__attribute__((used)) static int php_is_dir_ok(const cwd_state *state)
{
 zend_stat_t buf;

 if (php_sys_stat(state->cwd, &buf) == 0 && S_ISDIR(buf.st_mode))
  return (0);

 return (1);
}
