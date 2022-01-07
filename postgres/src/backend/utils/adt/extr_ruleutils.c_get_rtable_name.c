
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rtable_names; } ;
typedef TYPE_1__ deparse_namespace ;
struct TYPE_5__ {int namespaces; } ;
typedef TYPE_2__ deparse_context ;


 int Assert (int) ;
 scalar_t__ linitial (int ) ;
 int list_length (int ) ;
 scalar_t__ list_nth (int ,int) ;

__attribute__((used)) static char *
get_rtable_name(int rtindex, deparse_context *context)
{
 deparse_namespace *dpns = (deparse_namespace *) linitial(context->namespaces);

 Assert(rtindex > 0 && rtindex <= list_length(dpns->rtable_names));
 return (char *) list_nth(dpns->rtable_names, rtindex - 1);
}
