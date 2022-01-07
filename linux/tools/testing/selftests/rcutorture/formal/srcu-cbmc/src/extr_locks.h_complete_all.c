
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;


 int BUG () ;

__attribute__((used)) static inline void complete_all(struct completion *c)
{
 BUG();
}
