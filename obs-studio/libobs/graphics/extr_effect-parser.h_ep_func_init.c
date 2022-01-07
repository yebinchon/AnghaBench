
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_func {char* name; char* ret_type; } ;


 int memset (struct ep_func*,int ,int) ;

__attribute__((used)) static inline void ep_func_init(struct ep_func *epf, char *ret_type, char *name)
{
 memset(epf, 0, sizeof(struct ep_func));
 epf->name = name;
 epf->ret_type = ret_type;
}
