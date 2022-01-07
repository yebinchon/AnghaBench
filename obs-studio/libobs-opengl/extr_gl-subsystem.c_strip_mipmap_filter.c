
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
__attribute__((used)) static void strip_mipmap_filter(GLint *filter)
{
 switch (*filter) {
 case 130:
 case 133:
  return;
 case 128:
 case 129:
  *filter = 130;
  return;
 case 131:
 case 132:
  *filter = 133;
  return;
 }
 *filter = 130;
}
