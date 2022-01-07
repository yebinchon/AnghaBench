
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLenum ;


 scalar_t__ GL_NO_ERROR ;
 int LOG_ERROR ;
 int blog (int ,char*,...) ;
 scalar_t__ glGetError () ;
 int gl_error_to_str (scalar_t__) ;

__attribute__((used)) static inline bool gl_success(const char *funcname)
{
 GLenum errorcode = glGetError();
 if (errorcode != GL_NO_ERROR) {
  int attempts = 8;
  do {
   blog(LOG_ERROR,
        "%s failed, glGetError returned %s(0x%X)",
        funcname, gl_error_to_str(errorcode), errorcode);
   errorcode = glGetError();

   --attempts;
   if (attempts == 0) {
    blog(LOG_ERROR,
         "Too many GL errors, moving on");
    break;
   }
  } while (errorcode != GL_NO_ERROR);
  return 0;
 }

 return 1;
}
