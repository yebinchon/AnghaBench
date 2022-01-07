
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * idents; } ;
struct TYPE_8__ {int itemtype; size_t itemno; } ;
struct TYPE_7__ {int quoted; int * idents; int * ident; int * datum; } ;
typedef TYPE_1__ PLwdatum ;
typedef int PLpgSQL_recfield ;
typedef int PLpgSQL_rec ;
typedef TYPE_2__ PLpgSQL_nsitem ;
typedef int PLpgSQL_datum ;
typedef TYPE_3__ PLcword ;
typedef int List ;


 scalar_t__ IDENTIFIER_LOOKUP_DECLARE ;


 int * list_make2 (int ,int ) ;
 int makeString (char*) ;
 void** plpgsql_Datums ;
 scalar_t__ plpgsql_IdentifierLookup ;
 int * plpgsql_build_recfield (int *,char*) ;
 TYPE_2__* plpgsql_ns_lookup (int ,int,char*,char*,int *,int*) ;
 int plpgsql_ns_top () ;

bool
plpgsql_parse_dblword(char *word1, char *word2,
       PLwdatum *wdatum, PLcword *cword)
{
 PLpgSQL_nsitem *ns;
 List *idents;
 int nnames;

 idents = list_make2(makeString(word1),
      makeString(word2));






 if (plpgsql_IdentifierLookup != IDENTIFIER_LOOKUP_DECLARE)
 {



  ns = plpgsql_ns_lookup(plpgsql_ns_top(), 0,
          word1, word2, ((void*)0),
          &nnames);
  if (ns != ((void*)0))
  {
   switch (ns->itemtype)
   {
    case 128:

     wdatum->datum = plpgsql_Datums[ns->itemno];
     wdatum->ident = ((void*)0);
     wdatum->quoted = 0;
     wdatum->idents = idents;
     return 1;

    case 129:
     if (nnames == 1)
     {






      PLpgSQL_rec *rec;
      PLpgSQL_recfield *new;

      rec = (PLpgSQL_rec *) (plpgsql_Datums[ns->itemno]);
      new = plpgsql_build_recfield(rec, word2);

      wdatum->datum = (PLpgSQL_datum *) new;
     }
     else
     {

      wdatum->datum = plpgsql_Datums[ns->itemno];
     }
     wdatum->ident = ((void*)0);
     wdatum->quoted = 0;
     wdatum->idents = idents;
     return 1;

    default:
     break;
   }
  }
 }


 cword->idents = idents;
 return 0;
}
