
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SB ;
typedef int JsonNode ;


 int emit_value (int *,int const*) ;
 int emit_value_indented (int *,int const*,char const*,int ) ;
 char* sb_finish (int *) ;
 int sb_init (int *) ;

char *json_stringify(const JsonNode *node, const char *space)
{
 SB sb;
 sb_init(&sb);

 if (space != ((void*)0))
  emit_value_indented(&sb, node, space, 0);
 else
  emit_value(&sb, node);

 return sb_finish(&sb);
}
