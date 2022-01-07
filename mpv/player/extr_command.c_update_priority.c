
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPOpts {scalar_t__ w32_priority; } ;
struct MPContext {struct MPOpts* opts; } ;


 int GetCurrentProcess () ;
 int SetPriorityClass (int ,scalar_t__) ;

__attribute__((used)) static void update_priority(struct MPContext *mpctx)
{





}
