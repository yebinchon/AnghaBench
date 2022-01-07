
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAILURE ;
 int SUCCESS ;

__attribute__((used)) static inline int process_named_entity_html(const char **buf, const char **start, size_t *length)
{
 *start = *buf;






 while ((**buf >= 'a' && **buf <= 'z') ||
   (**buf >= 'A' && **buf <= 'Z') ||
   (**buf >= '0' && **buf <= '9')) {
  (*buf)++;
 }

 if (**buf != ';')
  return FAILURE;


 *length = *buf - *start;

 if (*length == 0)
  return FAILURE;

 return SUCCESS;
}
