
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_5__ {int lenwords; scalar_t__ curwords; scalar_t__ pos; int * words; } ;
struct TYPE_4__ {int cfgId; TYPE_2__* prs; } ;
typedef TYPE_1__ TSVectorBuildState ;
typedef int ParsedWord ;
typedef TYPE_2__ ParsedText ;


 scalar_t__ palloc (int) ;
 int parsetext (int ,TYPE_2__*,char*,int) ;

__attribute__((used)) static void
add_to_tsvector(void *_state, char *elem_value, int elem_len)
{
 TSVectorBuildState *state = (TSVectorBuildState *) _state;
 ParsedText *prs = state->prs;
 int32 prevwords;

 if (prs->words == ((void*)0))
 {




  prs->lenwords = 16;
  prs->words = (ParsedWord *) palloc(sizeof(ParsedWord) * prs->lenwords);
  prs->curwords = 0;
  prs->pos = 0;
 }

 prevwords = prs->curwords;

 parsetext(state->cfgId, prs, elem_value, elem_len);







 if (prs->curwords > prevwords)
  prs->pos += 1;
}
