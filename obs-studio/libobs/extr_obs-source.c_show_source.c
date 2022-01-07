
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {int (* show ) (scalar_t__) ;} ;
struct TYPE_8__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef TYPE_3__ obs_source_t ;


 int obs_source_dosignal (TYPE_3__*,char*,char*) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void show_source(obs_source_t *source)
{
 if (source->context.data && source->info.show)
  source->info.show(source->context.data);
 obs_source_dosignal(source, "source_show", "show");
}
