
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLint ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;

__attribute__((used)) static GLboolean isLegalLevels(GLint userLevel,GLint baseLevel,GLint maxLevel,
          GLint totalLevels)
{
   if (baseLevel < 0 || baseLevel < userLevel || maxLevel < baseLevel ||
       totalLevels < maxLevel)
      return GL_FALSE;
   else return GL_TRUE;
}
