
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


struct TYPE_19__ {char const* member_0; int * uri; TYPE_7__** playInterface; TYPE_8__** player; int * member_2; int * member_1; } ;
typedef TYPE_1__ uri_player ;
struct TYPE_26__ {scalar_t__ (* Realize ) (TYPE_8__**,int ) ;scalar_t__ (* GetInterface ) (TYPE_8__**,int ,TYPE_7__***) ;} ;
struct TYPE_25__ {scalar_t__ (* SetPlayState ) (TYPE_7__**,int ) ;} ;
struct TYPE_24__ {int member_2; int * member_1; int member_0; } ;
struct TYPE_23__ {int member_1; int member_0; } ;
struct TYPE_22__ {int * member_1; int member_0; } ;
struct TYPE_21__ {int * member_1; TYPE_5__* member_0; } ;
struct TYPE_20__ {TYPE_6__* member_1; TYPE_4__* member_0; } ;
struct TYPE_18__ {scalar_t__ (* CreateAudioPlayer ) (TYPE_11__**,TYPE_8__***,TYPE_2__*,TYPE_3__*,int ,int *,int *) ;} ;
typedef scalar_t__ SLresult ;
typedef int SLchar ;
typedef TYPE_2__ SLDataSource ;
typedef TYPE_3__ SLDataSink ;
typedef TYPE_4__ SLDataLocator_URI ;
typedef TYPE_5__ SLDataLocator_OutputMix ;
typedef TYPE_6__ SLDataFormat_MIME ;


 int SL_BOOLEAN_FALSE ;
 int SL_CONTAINERTYPE_UNSPECIFIED ;
 int SL_DATAFORMAT_MIME ;
 int SL_DATALOCATOR_OUTPUTMIX ;
 int SL_DATALOCATOR_URI ;
 int SL_IID_PLAY ;
 int SL_PLAYSTATE_PAUSED ;
 scalar_t__ SL_RESULT_SUCCESS ;
 TYPE_11__** engineInterface ;
 int outputMix ;
 TYPE_1__* players ;
 scalar_t__ stub1 (TYPE_11__**,TYPE_8__***,TYPE_2__*,TYPE_3__*,int ,int *,int *) ;
 scalar_t__ stub2 (TYPE_8__**,int ) ;
 scalar_t__ stub3 (TYPE_8__**,int ,TYPE_7__***) ;
 scalar_t__ stub4 (TYPE_7__**,int ) ;

uri_player* slplay_create_player_for_uri(const char* uri, char **error) {
  uri_player player = { uri, ((void*)0), ((void*)0) };

  SLresult result;
  SLDataLocator_URI locUri = {SL_DATALOCATOR_URI, (SLchar *) uri};
  SLDataFormat_MIME formatMime = {SL_DATAFORMAT_MIME, ((void*)0), SL_CONTAINERTYPE_UNSPECIFIED};
  SLDataSource audioSrc = {&locUri, &formatMime};

  SLDataLocator_OutputMix outMix = {SL_DATALOCATOR_OUTPUTMIX, outputMix};
  SLDataSink audioSnk = {&outMix, ((void*)0)};

  result = (*engineInterface)->CreateAudioPlayer(engineInterface, &player.player, &audioSrc, &audioSnk, 0, ((void*)0), ((void*)0));
  if (result != SL_RESULT_SUCCESS) {
    *error = "Failed to create audio player";
    return ((void*)0);
  }

  result = (*(player.player))->Realize(player.player, SL_BOOLEAN_FALSE);
  if (result != SL_RESULT_SUCCESS) {
    *error = "Failed to realize audio player";
    return ((void*)0);
  }

  result = (*(player.player))->GetInterface(player.player, SL_IID_PLAY, &(player.playInterface));
  if (result != SL_RESULT_SUCCESS) {
    *error = "Failed to get player interface";
    return ((void*)0);
  }

  result = (*(player.playInterface))->SetPlayState(player.playInterface, SL_PLAYSTATE_PAUSED);
  if (result != SL_RESULT_SUCCESS) {
    *error = "Failed to initialize playstate to SL_PLAYSTATE_PAUSED";
    return ((void*)0);
  }

  uri_player *p = players;
  while (p->uri != ((void*)0)) {
    p++;
  }
  *p = player;

  return p;
}
