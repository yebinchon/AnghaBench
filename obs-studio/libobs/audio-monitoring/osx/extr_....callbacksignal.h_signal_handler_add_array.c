
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_handler_t ;


 int signal_handler_add (int *,int ) ;

__attribute__((used)) static inline bool signal_handler_add_array(signal_handler_t *handler,
         const char **signal_decls)
{
 bool success = 1;
 if (!signal_decls)
  return 0;

 while (*signal_decls)
  if (!signal_handler_add(handler, *(signal_decls++)))
   success = 0;

 return success;
}
