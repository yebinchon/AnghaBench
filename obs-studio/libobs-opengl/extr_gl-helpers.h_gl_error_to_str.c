
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err_to_str ;
typedef scalar_t__ GLenum ;
__attribute__((used)) static const char *gl_error_to_str(GLenum errorcode)
{
 static const struct {
  GLenum error;
  const char *str;
 } err_to_str[] = {
  {
   134,
   "GL_INVALID_ENUM",
  },
  {
   131,
   "GL_INVALID_VALUE",
  },
  {
   132,
   "GL_INVALID_OPERATION",
  },
  {
   133,
   "GL_INVALID_FRAMEBUFFER_OPERATION",
  },
  {
   130,
   "GL_OUT_OF_MEMORY",
  },
  {
   128,
   "GL_STACK_UNDERFLOW",
  },
  {
   129,
   "GL_STACK_OVERFLOW",
  },
 };
 for (size_t i = 0; i < sizeof(err_to_str) / sizeof(*err_to_str); i++) {
  if (err_to_str[i].error == errorcode)
   return err_to_str[i].str;
 }
 return "Unknown";
}
