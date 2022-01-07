
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* items; } ;
struct TYPE_9__ {int type; struct TYPE_9__* parent; int keyName; } ;
struct TYPE_8__ {int type; } ;
typedef TYPE_1__ JsonPathItem ;
typedef TYPE_2__ JsonPathGinPathItem ;
typedef TYPE_3__ JsonPathGinPath ;
typedef int Datum ;


 int JGINFLAG_KEY ;
 int PointerGetDatum (int *) ;






 char* jspGetString (TYPE_1__*,int*) ;
 int make_text_key (int ,char*,int) ;
 TYPE_2__* palloc (int) ;

__attribute__((used)) static bool
jsonb_ops__add_path_item(JsonPathGinPath *path, JsonPathItem *jsp)
{
 JsonPathGinPathItem *pentry;
 Datum keyName;

 switch (jsp->type)
 {
  case 128:
   path->items = ((void*)0);
   return 1;

  case 129:
   {
    int len;
    char *key = jspGetString(jsp, &len);

    keyName = make_text_key(JGINFLAG_KEY, key, len);
    break;
   }

  case 133:
  case 131:
  case 132:
  case 130:
   keyName = PointerGetDatum(((void*)0));
   break;

  default:

   return 0;
 }

 pentry = palloc(sizeof(*pentry));

 pentry->type = jsp->type;
 pentry->keyName = keyName;
 pentry->parent = path->items;

 path->items = pentry;

 return 1;
}
