
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* head; } ;
struct TYPE_6__ {struct TYPE_6__* next; int key; TYPE_1__ children; } ;
typedef int SB ;
typedef TYPE_2__ JsonNode ;


 int emit_string (int *,int ) ;
 int emit_value_indented (int *,TYPE_2__ const*,char const*,int) ;
 int sb_putc (int *,char) ;
 int sb_puts (int *,char const*) ;

__attribute__((used)) static void emit_object_indented(SB *out, const JsonNode *object, const char *space, int indent_level)
{
 const JsonNode *member = object->children.head;
 int i;

 if (member == ((void*)0)) {
  sb_puts(out, "{}");
  return;
 }

 sb_puts(out, "{\n");
 while (member != ((void*)0)) {
  for (i = 0; i < indent_level + 1; i++)
   sb_puts(out, space);
  emit_string(out, member->key);
  sb_puts(out, ": ");
  emit_value_indented(out, member, space, indent_level + 1);

  member = member->next;
  sb_puts(out, member != ((void*)0) ? ",\n" : "\n");
 }
 for (i = 0; i < indent_level; i++)
  sb_puts(out, space);
 sb_putc(out, '}');
}
