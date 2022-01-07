
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int BUG () ;

__attribute__((used)) static inline bool schedule_work(struct work_struct *work)
{
 BUG();
 return 1;
}
