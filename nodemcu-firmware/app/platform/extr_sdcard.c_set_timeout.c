
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ target; } ;
typedef TYPE_1__ to_t ;


 scalar_t__ system_get_time () ;

__attribute__((used)) static void set_timeout( to_t *to, uint32_t us )
{
  uint32_t offset;

  to->start = system_get_time();

  offset = 0xffffffff - to->start;
  if (offset > us) {
    to->target = us - offset;
  } else {
    to->target = to->start + us;
  }
}
