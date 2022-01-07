
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_effect_pass {int dummy; } ;


 int memset (struct gs_effect_pass*,int ,int) ;

__attribute__((used)) static inline void effect_pass_init(struct gs_effect_pass *pass)
{
 memset(pass, 0, sizeof(struct gs_effect_pass));
}
