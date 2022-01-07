
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error_list; } ;
struct shader_parser {TYPE_1__ cfp; } ;


 char* error_data_buildstring (int *) ;

__attribute__((used)) static inline char *shader_parser_geterrors(struct shader_parser *sp)
{
 return error_data_buildstring(&sp->cfp.error_list);
}
