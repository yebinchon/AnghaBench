
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int text ;
struct TYPE_6__ {scalar_t__ curwords; int * words; } ;
struct TYPE_5__ {int cfgId; TYPE_2__* prs; } ;
typedef TYPE_1__ TSVectorBuildState ;
typedef int TSVector ;
typedef TYPE_2__ ParsedText ;
typedef int Oid ;


 int add_to_tsvector ;
 int iterate_json_values (int *,int ,TYPE_1__*,int ) ;
 int make_tsvector (TYPE_2__*) ;

__attribute__((used)) static TSVector
json_to_tsvector_worker(Oid cfgId, text *json, uint32 flags)
{
 TSVectorBuildState state;
 ParsedText prs;

 prs.words = ((void*)0);
 prs.curwords = 0;
 state.prs = &prs;
 state.cfgId = cfgId;

 iterate_json_values(json, flags, &state, add_to_tsvector);

 return make_tsvector(&prs);
}
