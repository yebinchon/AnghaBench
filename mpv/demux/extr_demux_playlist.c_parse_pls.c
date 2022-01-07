
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl_parser {int dummy; } ;


 int parse_ini_thing (struct pl_parser*,char*,char*) ;

__attribute__((used)) static int parse_pls(struct pl_parser *p)
{
    return parse_ini_thing(p, "[playlist]", "File");
}
