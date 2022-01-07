
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bstr ;


 int bstr0 (char*) ;
 int bstr_xappend (int *,int *,int ) ;

__attribute__((used)) static void add_indent(bstr *b, int indent)
{
    if (indent < 0)
        return;
    bstr_xappend(((void*)0), b, bstr0("\n"));
    for (int n = 0; n < indent; n++)
        bstr_xappend(((void*)0), b, bstr0(" "));
}
