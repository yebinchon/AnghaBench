
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_attrib {int name; } ;


 int bfree (int ) ;

__attribute__((used)) static inline void shader_attrib_free(struct shader_attrib *attrib)
{
 bfree(attrib->name);
}
