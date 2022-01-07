
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int itemtype; size_t itemno; } ;
struct TYPE_8__ {char* ident; int quoted; int idents; int datum; } ;
struct TYPE_7__ {char* ident; int quoted; } ;
typedef TYPE_1__ PLword ;
typedef TYPE_2__ PLwdatum ;
typedef TYPE_3__ PLpgSQL_nsitem ;


 int ERROR ;
 scalar_t__ IDENTIFIER_LOOKUP_NORMAL ;
 int NIL ;


 int elog (int ,char*,int) ;
 int * plpgsql_Datums ;
 scalar_t__ plpgsql_IdentifierLookup ;
 TYPE_3__* plpgsql_ns_lookup (int ,int,char*,int *,int *,int *) ;
 int plpgsql_ns_top () ;

bool
plpgsql_parse_word(char *word1, const char *yytxt, bool lookup,
       PLwdatum *wdatum, PLword *word)
{
 PLpgSQL_nsitem *ns;






 if (lookup && plpgsql_IdentifierLookup == IDENTIFIER_LOOKUP_NORMAL)
 {



  ns = plpgsql_ns_lookup(plpgsql_ns_top(), 0,
          word1, ((void*)0), ((void*)0),
          ((void*)0));

  if (ns != ((void*)0))
  {
   switch (ns->itemtype)
   {
    case 128:
    case 129:
     wdatum->datum = plpgsql_Datums[ns->itemno];
     wdatum->ident = word1;
     wdatum->quoted = (yytxt[0] == '"');
     wdatum->idents = NIL;
     return 1;

    default:

     elog(ERROR, "unrecognized plpgsql itemtype: %d",
       ns->itemtype);
   }
  }
 }





 word->ident = word1;
 word->quoted = (yytxt[0] == '"');
 return 0;
}
