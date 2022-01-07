
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int printTextFormat ;
struct TYPE_3__ {int const* line_style; } ;
typedef TYPE_1__ printTableOpt ;


 int const pg_asciiformat ;

const printTextFormat *
get_line_style(const printTableOpt *opt)
{





 if (opt->line_style != ((void*)0))
  return opt->line_style;
 else
  return &pg_asciiformat;
}
