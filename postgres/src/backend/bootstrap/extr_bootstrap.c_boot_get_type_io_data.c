
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int typbyval; char typalign; char typdelim; scalar_t__ typelem; scalar_t__ typinput; scalar_t__ typoutput; int typlen; } ;
struct typmap {scalar_t__ am_oid; TYPE_1__ am_typ; } ;
typedef int int16 ;
struct TYPE_4__ {scalar_t__ oid; int byval; char align; scalar_t__ elem; scalar_t__ inproc; scalar_t__ outproc; int len; } ;
typedef scalar_t__ Oid ;


 int ERROR ;
 scalar_t__ OidIsValid (scalar_t__) ;
 struct typmap** Typ ;
 TYPE_2__* TypInfo ;
 int elog (int ,char*,scalar_t__) ;
 int n_types ;

void
boot_get_type_io_data(Oid typid,
       int16 *typlen,
       bool *typbyval,
       char *typalign,
       char *typdelim,
       Oid *typioparam,
       Oid *typinput,
       Oid *typoutput)
{
 if (Typ != ((void*)0))
 {

  struct typmap **app;
  struct typmap *ap;

  app = Typ;
  while (*app && (*app)->am_oid != typid)
   ++app;
  ap = *app;
  if (ap == ((void*)0))
   elog(ERROR, "type OID %u not found in Typ list", typid);

  *typlen = ap->am_typ.typlen;
  *typbyval = ap->am_typ.typbyval;
  *typalign = ap->am_typ.typalign;
  *typdelim = ap->am_typ.typdelim;


  if (OidIsValid(ap->am_typ.typelem))
   *typioparam = ap->am_typ.typelem;
  else
   *typioparam = typid;

  *typinput = ap->am_typ.typinput;
  *typoutput = ap->am_typ.typoutput;
 }
 else
 {

  int typeindex;

  for (typeindex = 0; typeindex < n_types; typeindex++)
  {
   if (TypInfo[typeindex].oid == typid)
    break;
  }
  if (typeindex >= n_types)
   elog(ERROR, "type OID %u not found in TypInfo", typid);

  *typlen = TypInfo[typeindex].len;
  *typbyval = TypInfo[typeindex].byval;
  *typalign = TypInfo[typeindex].align;

  *typdelim = ',';


  if (OidIsValid(TypInfo[typeindex].elem))
   *typioparam = TypInfo[typeindex].elem;
  else
   *typioparam = typid;

  *typinput = TypInfo[typeindex].inproc;
  *typoutput = TypInfo[typeindex].outproc;
 }
}
