
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_12__ {scalar_t__ type_id; TYPE_1__* rngelemtype; } ;
struct TYPE_11__ {TYPE_2__* flinfo; } ;
struct TYPE_10__ {int proc; int typiofunc; TYPE_5__* typcache; int typioparam; } ;
struct TYPE_9__ {void* fn_extra; int fn_mcxt; } ;
struct TYPE_8__ {int type_id; } ;
typedef TYPE_3__ RangeIOData ;
typedef scalar_t__ Oid ;
typedef int IOFuncSelector ;
typedef TYPE_4__* FunctionCallInfo ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int IOFunc_receive ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int OidIsValid (int ) ;
 int TYPECACHE_RANGE_INFO ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int fmgr_info_cxt (int ,int *,int ) ;
 int format_type_be (int ) ;
 int get_type_io_data (int ,int ,int *,int*,char*,char*,int *,int *) ;
 TYPE_5__* lookup_type_cache (scalar_t__,int ) ;

__attribute__((used)) static RangeIOData *
get_range_io_data(FunctionCallInfo fcinfo, Oid rngtypid, IOFuncSelector func)
{
 RangeIOData *cache = (RangeIOData *) fcinfo->flinfo->fn_extra;

 if (cache == ((void*)0) || cache->typcache->type_id != rngtypid)
 {
  int16 typlen;
  bool typbyval;
  char typalign;
  char typdelim;

  cache = (RangeIOData *) MemoryContextAlloc(fcinfo->flinfo->fn_mcxt,
               sizeof(RangeIOData));
  cache->typcache = lookup_type_cache(rngtypid, TYPECACHE_RANGE_INFO);
  if (cache->typcache->rngelemtype == ((void*)0))
   elog(ERROR, "type %u is not a range type", rngtypid);


  get_type_io_data(cache->typcache->rngelemtype->type_id,
       func,
       &typlen,
       &typbyval,
       &typalign,
       &typdelim,
       &cache->typioparam,
       &cache->typiofunc);

  if (!OidIsValid(cache->typiofunc))
  {

   if (func == IOFunc_receive)
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_FUNCTION),
       errmsg("no binary input function available for type %s",
        format_type_be(cache->typcache->rngelemtype->type_id))));
   else
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_FUNCTION),
       errmsg("no binary output function available for type %s",
        format_type_be(cache->typcache->rngelemtype->type_id))));
  }
  fmgr_info_cxt(cache->typiofunc, &cache->proc,
       fcinfo->flinfo->fn_mcxt);

  fcinfo->flinfo->fn_extra = (void *) cache;
 }

 return cache;
}
