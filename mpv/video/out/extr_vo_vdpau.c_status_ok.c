
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {scalar_t__ config_ok; } ;


 scalar_t__ check_preemption (struct vo*) ;

__attribute__((used)) static bool status_ok(struct vo *vo)
{
    return vo->config_ok && check_preemption(vo);
}
