
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source_location {int col; int line; int file; } ;
struct YYLTYPE {int first_column; int first_line; } ;
struct TYPE_2__ {int source_file; } ;


 TYPE_1__ hlsl_ctx ;

__attribute__((used)) static void set_location(struct source_location *loc, const struct YYLTYPE *l)
{
    loc->file = hlsl_ctx.source_file;
    loc->line = l->first_line;
    loc->col = l->first_column;
}
