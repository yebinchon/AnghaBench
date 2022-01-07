
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_technique {int dummy; } ;


 int memset (struct ep_technique*,int ,int) ;

__attribute__((used)) static inline void ep_technique_init(struct ep_technique *ept)
{
 memset(ept, 0, sizeof(struct ep_technique));
}
