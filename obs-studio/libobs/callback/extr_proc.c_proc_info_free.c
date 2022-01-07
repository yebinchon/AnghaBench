
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_info {int func; } ;


 int decl_info_free (int *) ;

__attribute__((used)) static inline void proc_info_free(struct proc_info *pi)
{
 decl_info_free(&pi->func);
}
