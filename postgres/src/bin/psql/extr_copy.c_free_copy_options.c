
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct copy_options {struct copy_options* file; struct copy_options* after_tofrom; struct copy_options* before_tofrom; } ;


 int free (struct copy_options*) ;

__attribute__((used)) static void
free_copy_options(struct copy_options *ptr)
{
 if (!ptr)
  return;
 free(ptr->before_tofrom);
 free(ptr->after_tofrom);
 free(ptr->file);
 free(ptr);
}
