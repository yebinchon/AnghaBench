
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ typtype; int domainBaseTypmod; int domainBaseType; } ;
typedef TYPE_1__ TypeCacheEntry ;
struct TYPE_6__ {int domain_type; int mcxt; int * econtext; int constraint_ref; int proc; int typiofunc; int typioparam; int typtypmod; } ;
typedef int Oid ;
typedef int MemoryContext ;
typedef TYPE_2__ DomainIOData ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int InitDomainConstraintRef (int ,int *,int ,int) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int TYPECACHE_DOMAIN_BASE_INFO ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int fmgr_info_cxt (int ,int *,int ) ;
 int format_type_be (int ) ;
 int getTypeBinaryInputInfo (int ,int *,int *) ;
 int getTypeInputInfo (int ,int *,int *) ;
 TYPE_1__* lookup_type_cache (int ,int ) ;

__attribute__((used)) static DomainIOData *
domain_state_setup(Oid domainType, bool binary, MemoryContext mcxt)
{
 DomainIOData *my_extra;
 TypeCacheEntry *typentry;
 Oid baseType;

 my_extra = (DomainIOData *) MemoryContextAlloc(mcxt, sizeof(DomainIOData));
 typentry = lookup_type_cache(domainType, TYPECACHE_DOMAIN_BASE_INFO);
 if (typentry->typtype != TYPTYPE_DOMAIN)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("type %s is not a domain",
      format_type_be(domainType))));


 baseType = typentry->domainBaseType;
 my_extra->typtypmod = typentry->domainBaseTypmod;


 if (binary)
  getTypeBinaryInputInfo(baseType,
          &my_extra->typiofunc,
          &my_extra->typioparam);
 else
  getTypeInputInfo(baseType,
       &my_extra->typiofunc,
       &my_extra->typioparam);
 fmgr_info_cxt(my_extra->typiofunc, &my_extra->proc, mcxt);


 InitDomainConstraintRef(domainType, &my_extra->constraint_ref, mcxt, 1);


 my_extra->econtext = ((void*)0);
 my_extra->mcxt = mcxt;


 my_extra->domain_type = domainType;

 return my_extra;
}
