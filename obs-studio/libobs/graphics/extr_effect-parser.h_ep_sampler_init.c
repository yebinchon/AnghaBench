
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_sampler {int dummy; } ;


 int memset (struct ep_sampler*,int ,int) ;

__attribute__((used)) static inline void ep_sampler_init(struct ep_sampler *eps)
{
 memset(eps, 0, sizeof(struct ep_sampler));
}
