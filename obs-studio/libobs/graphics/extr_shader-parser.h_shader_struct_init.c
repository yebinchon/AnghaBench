
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_struct {int dummy; } ;


 int memset (struct shader_struct*,int ,int) ;

__attribute__((used)) static inline void shader_struct_init(struct shader_struct *ss)
{
 memset(ss, 0, sizeof(struct shader_struct));
}
