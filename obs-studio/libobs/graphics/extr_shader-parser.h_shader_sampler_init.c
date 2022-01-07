
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_sampler {int dummy; } ;


 int memset (struct shader_sampler*,int ,int) ;

__attribute__((used)) static inline void shader_sampler_init(struct shader_sampler *ss)
{
 memset(ss, 0, sizeof(struct shader_sampler));
}
