
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {int was_xmax; } ;
struct TYPE_5__ {TYPE_1__ was_running; } ;
typedef TYPE_2__ SnapBuild ;



__attribute__((used)) static inline void
SnapBuildStartNextPhaseAt(SnapBuild *builder, TransactionId at)
{




 builder->was_running.was_xmax = at;
}
