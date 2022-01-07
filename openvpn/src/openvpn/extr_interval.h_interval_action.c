
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interval {int last_action; } ;


 int D_INTERVAL ;
 int dmsg (int ,char*) ;
 int now ;

__attribute__((used)) static inline void
interval_action(struct interval *top)
{



    top->last_action = now;
}
