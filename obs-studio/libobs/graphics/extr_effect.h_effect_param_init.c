
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_effect_param {int annotations; } ;


 int da_init (int ) ;
 int memset (struct gs_effect_param*,int ,int) ;

__attribute__((used)) static inline void effect_param_init(struct gs_effect_param *param)
{
 memset(param, 0, sizeof(struct gs_effect_param));
 da_init(param->annotations);
}
