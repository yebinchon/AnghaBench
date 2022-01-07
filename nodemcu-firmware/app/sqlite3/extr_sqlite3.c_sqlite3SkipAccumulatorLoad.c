
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skipFlag; } ;
typedef TYPE_1__ sqlite3_context ;



__attribute__((used)) static void sqlite3SkipAccumulatorLoad(sqlite3_context *context){
  context->skipFlag = 1;
}
