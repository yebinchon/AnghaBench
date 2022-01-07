
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int text ;
struct TYPE_14__ {int transformed; TYPE_1__* prsoptions; TYPE_1__* query; TYPE_2__* prsobj; TYPE_3__* cfg; TYPE_1__* prs; } ;
struct TYPE_13__ {int cfgId; } ;
struct TYPE_12__ {int prsheadline; } ;
struct TYPE_11__ {scalar_t__ curwords; } ;
typedef TYPE_1__* TSQuery ;
typedef TYPE_2__ TSParserCacheEntry ;
typedef TYPE_3__ TSConfigCacheEntry ;
typedef TYPE_1__ List ;
typedef TYPE_1__ HeadlineParsedText ;
typedef TYPE_6__ HeadlineJsonState ;


 int FunctionCall3 (int *,int ,int ,int ) ;
 int PointerGetDatum (TYPE_1__*) ;
 int * generateHeadline (TYPE_1__*) ;
 int hlparsetext (int ,TYPE_1__*,TYPE_1__*,char*,int) ;

__attribute__((used)) static text *
headline_json_value(void *_state, char *elem_value, int elem_len)
{
 HeadlineJsonState *state = (HeadlineJsonState *) _state;

 HeadlineParsedText *prs = state->prs;
 TSConfigCacheEntry *cfg = state->cfg;
 TSParserCacheEntry *prsobj = state->prsobj;
 TSQuery query = state->query;
 List *prsoptions = state->prsoptions;

 prs->curwords = 0;
 hlparsetext(cfg->cfgId, prs, query, elem_value, elem_len);
 FunctionCall3(&(prsobj->prsheadline),
      PointerGetDatum(prs),
      PointerGetDatum(prsoptions),
      PointerGetDatum(query));

 state->transformed = 1;
 return generateHeadline(prs);
}
