
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLenum ;


 scalar_t__ glGetError () ;
 int hlog (char*,char const*,char const*,scalar_t__) ;

__attribute__((used)) static inline bool gl_error(const char *func, const char *str)
{
 GLenum error = glGetError();
 if (error != 0) {
  hlog("%s: %s: %lu", func, str, error);
  return 1;
 }

 return 0;
}
