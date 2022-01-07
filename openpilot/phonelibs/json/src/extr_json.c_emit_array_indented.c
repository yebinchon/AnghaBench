
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* head; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ children; } ;
typedef int SB ;
typedef TYPE_2__ JsonNode ;


 int emit_value_indented (int *,TYPE_2__ const*,char const*,int) ;
 int sb_putc (int *,char) ;
 int sb_puts (int *,char const*) ;

__attribute__((used)) static void emit_array_indented(SB *out, const JsonNode *array, const char *space, int indent_level)
{
 const JsonNode *element = array->children.head;
 int i;

 if (element == ((void*)0)) {
  sb_puts(out, "[]");
  return;
 }

 sb_puts(out, "[\n");
 while (element != ((void*)0)) {
  for (i = 0; i < indent_level + 1; i++)
   sb_puts(out, space);
  emit_value_indented(out, element, space, indent_level + 1);

  element = element->next;
  sb_puts(out, element != ((void*)0) ? ",\n" : "\n");
 }
 for (i = 0; i < indent_level; i++)
  sb_puts(out, space);
 sb_putc(out, ']');
}
