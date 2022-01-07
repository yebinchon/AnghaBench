
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {scalar_t__ count; scalar_t__ bytes; scalar_t__ total; int name; } ;


 int DEBUG_PRINT_L1 (char*,int ,scalar_t__,float,float) ;

__attribute__((used)) static void print_ustats(const struct stats * const ustats)
{
 DEBUG_PRINT_L1("%s\t%7d\t%7.0f\t%7.0f\n",
         ustats->name, ustats->count,
         (float)ustats->total / (float)ustats->count,
         (float)ustats->bytes / (float)ustats->count);
}
