
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int smart_str ;
struct TYPE_3__ {int depth; } ;
typedef TYPE_1__ php_json_encoder ;


 int PHP_JSON_PRETTY_PRINT ;
 int smart_str_appendl (int *,char*,int) ;

__attribute__((used)) static inline void php_json_pretty_print_indent(smart_str *buf, int options, php_json_encoder *encoder)
{
 int i;

 if (options & PHP_JSON_PRETTY_PRINT) {
  for (i = 0; i < encoder->depth; ++i) {
   smart_str_appendl(buf, "    ", 4);
  }
 }
}
