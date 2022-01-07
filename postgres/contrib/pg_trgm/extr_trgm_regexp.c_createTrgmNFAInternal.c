
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int regex_t ;
typedef int TrgmPackedGraph ;
struct TYPE_10__ {TYPE_1__* initState; int ncolors; int colorInfo; int * regex; } ;
typedef TYPE_2__ TrgmNFA ;
struct TYPE_9__ {int flags; } ;
typedef int TRGM ;
typedef int MemoryContext ;


 int TSTATE_FIN ;
 int * expandColorTrigrams (TYPE_2__*,int ) ;
 int getColorInfo (int *,TYPE_2__*) ;
 int * packGraph (TYPE_2__*,int ) ;
 int printSourceNFA (int *,int ,int ) ;
 int printTrgmNFA (TYPE_2__*) ;
 int printTrgmPackedGraph (int *,int *) ;
 int selectColorTrigrams (TYPE_2__*) ;
 int transformGraph (TYPE_2__*) ;

__attribute__((used)) static TRGM *
createTrgmNFAInternal(regex_t *regex, TrgmPackedGraph **graph,
       MemoryContext rcontext)
{
 TRGM *trg;
 TrgmNFA trgmNFA;

 trgmNFA.regex = regex;


 getColorInfo(regex, &trgmNFA);
 transformGraph(&trgmNFA);
 if (trgmNFA.initState->flags & TSTATE_FIN)
  return ((void*)0);




 if (!selectColorTrigrams(&trgmNFA))
  return ((void*)0);





 trg = expandColorTrigrams(&trgmNFA, rcontext);

 *graph = packGraph(&trgmNFA, rcontext);





 return trg;
}
