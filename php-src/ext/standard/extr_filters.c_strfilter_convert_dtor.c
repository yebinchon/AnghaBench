
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;
struct TYPE_6__ {int persistent; } ;
typedef TYPE_2__ php_convert_filter ;


 int * Z_PTR (int ) ;
 int assert (int ) ;
 int pefree (int *,int ) ;
 int php_convert_filter_dtor (TYPE_2__*) ;

__attribute__((used)) static void strfilter_convert_dtor(php_stream_filter *thisfilter)
{
 assert(Z_PTR(thisfilter->abstract) != ((void*)0));

 php_convert_filter_dtor((php_convert_filter *)Z_PTR(thisfilter->abstract));
 pefree(Z_PTR(thisfilter->abstract), ((php_convert_filter *)Z_PTR(thisfilter->abstract))->persistent);
}
