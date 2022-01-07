
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_struct {int dummy; } ;


 int memset (struct ep_struct*,int ,int) ;

__attribute__((used)) static inline void ep_struct_init(struct ep_struct *eps)
{
 memset(eps, 0, sizeof(struct ep_struct));
}
