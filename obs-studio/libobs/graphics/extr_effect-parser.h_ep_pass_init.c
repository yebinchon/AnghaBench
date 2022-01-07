
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_pass {int dummy; } ;


 int memset (struct ep_pass*,int ,int) ;

__attribute__((used)) static inline void ep_pass_init(struct ep_pass *epp)
{
 memset(epp, 0, sizeof(struct ep_pass));
}
