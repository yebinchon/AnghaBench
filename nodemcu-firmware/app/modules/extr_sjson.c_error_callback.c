
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct jsonsl_state_st {int dummy; } ;
typedef TYPE_1__* jsonsl_t ;
typedef int jsonsl_error_t ;
struct TYPE_5__ {int error; int complete; } ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_2__ JSN_DATA ;


 int jsonsl_strerror (int ) ;

__attribute__((used)) static int error_callback(jsonsl_t jsn,
                   jsonsl_error_t err,
                   struct jsonsl_state_st *state,
                   char *at)
{
  JSN_DATA *data = (JSN_DATA *) jsn->data;
  if (!data->complete) {
    data->error = jsonsl_strerror(err);
  }


  return 0;
}
