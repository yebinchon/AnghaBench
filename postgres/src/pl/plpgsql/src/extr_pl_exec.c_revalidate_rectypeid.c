
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tupDesc_identifier; scalar_t__ typtype; int * tupDesc; int domainBaseType; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_8__ {int rectypeid; TYPE_2__* datatype; } ;
struct TYPE_7__ {scalar_t__ tupdesc_id; int typoid; TYPE_1__* tcache; int atttypmod; int * origtypname; } ;
typedef TYPE_2__ PLpgSQL_type ;
typedef TYPE_3__ PLpgSQL_rec ;


 int Assert (int ) ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int RECORDOID ;
 int TYPECACHE_DOMAIN_BASE_INFO ;
 int TYPECACHE_TUPDESC ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 TYPE_1__* lookup_type_cache (int ,int) ;
 int typenameTypeIdAndMod (int *,int *,int *,int *) ;

__attribute__((used)) static void
revalidate_rectypeid(PLpgSQL_rec *rec)
{
 PLpgSQL_type *typ = rec->datatype;
 TypeCacheEntry *typentry;

 if (rec->rectypeid == RECORDOID)
  return;
 Assert(typ != ((void*)0));
 if (typ->tcache &&
  typ->tcache->tupDesc_identifier == typ->tupdesc_id)
  return;






 if (typ->origtypname != ((void*)0))
 {

  typenameTypeIdAndMod(((void*)0), typ->origtypname,
        &typ->typoid,
        &typ->atttypmod);
 }


 typentry = lookup_type_cache(typ->typoid,
         TYPECACHE_TUPDESC |
         TYPECACHE_DOMAIN_BASE_INFO);
 if (typentry->typtype == TYPTYPE_DOMAIN)
  typentry = lookup_type_cache(typentry->domainBaseType,
          TYPECACHE_TUPDESC);
 if (typentry->tupDesc == ((void*)0))
 {




  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("type %s is not composite",
      format_type_be(typ->typoid))));
 }





 typ->tcache = typentry;
 typ->tupdesc_id = typentry->tupDesc_identifier;




 rec->rectypeid = typ->typoid;
}
