
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ using_immediate; } ;
typedef TYPE_1__ graphics_t ;


 size_t IMMEDIATE_COUNT ;
 int LOG_ERROR ;
 int blog (int ,char*,char const*,size_t) ;

__attribute__((used)) static inline bool validvertsize(graphics_t *graphics, size_t num,
     const char *name)
{
 if (graphics->using_immediate && num == IMMEDIATE_COUNT) {
  blog(LOG_ERROR,
       "%s: tried to use over %u "
       "for immediate rendering",
       name, IMMEDIATE_COUNT);
  return 0;
 }

 return 1;
}
