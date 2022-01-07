
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ (* Realize ) (TYPE_5__**,int const) ;scalar_t__ (* GetInterface ) (TYPE_5__**,int ,TYPE_3__***) ;} ;
struct TYPE_15__ {scalar_t__ (* CreateOutputMix ) (TYPE_3__**,TYPE_2__***,int,int const*,int const*) ;} ;
struct TYPE_14__ {scalar_t__ (* Realize ) (TYPE_2__**,int const) ;} ;
struct TYPE_13__ {int member_1; int member_0; } ;
typedef scalar_t__ SLresult ;
typedef int SLboolean ;
typedef int SLInterfaceID ;
typedef TYPE_1__ SLEngineOption ;


 int const SL_BOOLEAN_FALSE ;
 int SL_BOOLEAN_TRUE ;
 int SL_ENGINEOPTION_THREADSAFE ;
 int SL_IID_ENGINE ;
 int const SL_IID_VOLUME ;
 scalar_t__ SL_RESULT_SUCCESS ;
 TYPE_5__** engine ;
 TYPE_3__** engineInterface ;
 TYPE_2__** outputMix ;
 scalar_t__ slCreateEngine (TYPE_5__***,int,TYPE_1__*,int ,int *,int *) ;
 scalar_t__ stub1 (TYPE_5__**,int const) ;
 scalar_t__ stub2 (TYPE_5__**,int ,TYPE_3__***) ;
 scalar_t__ stub3 (TYPE_3__**,TYPE_2__***,int,int const*,int const*) ;
 scalar_t__ stub4 (TYPE_2__**,int const) ;

void slplay_setup(char **error) {
  SLresult result;
  SLEngineOption engineOptions[] = {{SL_ENGINEOPTION_THREADSAFE, SL_BOOLEAN_TRUE}};
  result = slCreateEngine(&engine, 1, engineOptions, 0, ((void*)0), ((void*)0));
  if (result != SL_RESULT_SUCCESS) {
    *error = "Failed to create OpenSL engine";
  }

  result = (*engine)->Realize(engine, SL_BOOLEAN_FALSE);
  if (result != SL_RESULT_SUCCESS) {
    *error = "Failed to realize OpenSL engine";
  }

  result = (*engine)->GetInterface(engine, SL_IID_ENGINE, &engineInterface);
  if (result != SL_RESULT_SUCCESS) {
    *error = "Failed to realize OpenSL engine";
  }

  const SLInterfaceID ids[1] = {SL_IID_VOLUME};
  const SLboolean req[1] = {SL_BOOLEAN_FALSE};
  result = (*engineInterface)->CreateOutputMix(engineInterface, &outputMix, 1, ids, req);
  if (result != SL_RESULT_SUCCESS) {
    *error = "Failed to create output mix";
  }

  result = (*outputMix)->Realize(outputMix, SL_BOOLEAN_FALSE);
  if (result != SL_RESULT_SUCCESS) {
    *error = "Failed to realize output mix";
  }
}
