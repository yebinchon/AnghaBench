
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pause_data {int ts_end; int ts_start; } ;



__attribute__((used)) static inline bool pause_can_stop(struct pause_data *pause)
{
 return !!pause->ts_start && !pause->ts_end;
}
