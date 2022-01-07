
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tag; int number_; int string_; int bool_; } ;
typedef int SB ;
typedef TYPE_1__ JsonNode ;
 int assert (int) ;
 int emit_array (int *,TYPE_1__ const*) ;
 int emit_number (int *,int ) ;
 int emit_object (int *,TYPE_1__ const*) ;
 int emit_string (int *,int ) ;
 int sb_puts (int *,char*) ;
 int tag_is_valid (int) ;

__attribute__((used)) static void emit_value(SB *out, const JsonNode *node)
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
   emit_array(out, node);
   break;
  case 129:
   emit_object(out, node);
   break;
  default:
   assert(0);
 }
}
