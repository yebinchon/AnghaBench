
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl_parser {int dummy; } ;
typedef int bstr ;


 int bstr0 (int ) ;
 int pl_get_line0 (struct pl_parser*) ;

__attribute__((used)) static bstr pl_get_line(struct pl_parser *p)
{
    return bstr0(pl_get_line0(p));
}
