
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_effect {int dummy; } ;
typedef int gs_effect_t ;


 int memset (int *,int ,int) ;

__attribute__((used)) static inline void effect_init(gs_effect_t *effect)
{
 memset(effect, 0, sizeof(struct gs_effect));
}
