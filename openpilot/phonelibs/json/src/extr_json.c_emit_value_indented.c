
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tag; int number_; int string_; int bool_; } ;
typedef int SB ;
typedef TYPE_1__ JsonNode ;
 int assert (int) ;
 int emit_array_indented (int *,TYPE_1__ const*,char const*,int) ;
 int emit_number (int *,int ) ;
 int emit_object_indented (int *,TYPE_1__ const*,char const*,int) ;
 int emit_string (int *,int ) ;
 int sb_puts (int *,char*) ;
 int tag_is_valid (int) ;

void emit_value_indented(SB *out, const JsonNode *node, const char *space, int indent_level)
{
 assert(tag_is_valid(node->tag));
 switch (node->tag) {
  case 131:
   sb_puts(out, "null");
   break;
  case 132:
   sb_puts(out, node->bool_ ? "true" : "false");
   break;
  case 128:
   emit_string(out, node->string_);
   break;
  case 130:
   emit_number(out, node->number_);
   break;
  case 133:
   emit_array_indented(out, node, space, indent_level);
   break;
  case 129:
   emit_object_indented(out, node, space, indent_level);
   break;
  default:
   assert(0);
 }
}
