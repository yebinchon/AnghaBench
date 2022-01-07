
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_5__ {scalar_t__ weight; } ;
struct TYPE_4__ {int ts_choose_rs; } ;
typedef TYPE_1__ TState ;


 scalar_t__ getrand (int *,int ,scalar_t__) ;
 int num_scripts ;
 TYPE_2__* sql_script ;
 scalar_t__ total_weight ;

__attribute__((used)) static int
chooseScript(TState *thread)
{
 int i = 0;
 int64 w;

 if (num_scripts == 1)
  return 0;

 w = getrand(&thread->ts_choose_rs, 0, total_weight - 1);
 do
 {
  w -= sql_script[i++].weight;
 } while (w >= 0);

 return i - 1;
}
