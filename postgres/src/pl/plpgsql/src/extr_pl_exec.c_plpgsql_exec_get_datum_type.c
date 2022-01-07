
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_20__ {int dtype; } ;
struct TYPE_19__ {scalar_t__* datums; } ;
struct TYPE_18__ {TYPE_11__* erh; int refname; int rectypeid; } ;
struct TYPE_14__ {int ftypeid; } ;
struct TYPE_17__ {size_t recparentno; TYPE_12__ finfo; int rectupledescid; int fieldname; } ;
struct TYPE_16__ {TYPE_1__* datatype; } ;
struct TYPE_15__ {int typoid; } ;
struct TYPE_13__ {int er_tupdesc_id; int er_typeid; } ;
typedef TYPE_2__ PLpgSQL_var ;
typedef TYPE_3__ PLpgSQL_recfield ;
typedef TYPE_4__ PLpgSQL_rec ;
typedef TYPE_5__ PLpgSQL_execstate ;
typedef TYPE_6__ PLpgSQL_datum ;
typedef int Oid ;


 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 int InvalidOid ;




 int RECORDOID ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int expanded_record_lookup_field (TYPE_11__*,int ,TYPE_12__*) ;
 int instantiate_empty_record_variable (TYPE_5__*,TYPE_4__*) ;
 int unlikely (int) ;

Oid
plpgsql_exec_get_datum_type(PLpgSQL_execstate *estate,
       PLpgSQL_datum *datum)
{
 Oid typeid;

 switch (datum->dtype)
 {
  case 128:
  case 131:
   {
    PLpgSQL_var *var = (PLpgSQL_var *) datum;

    typeid = var->datatype->typoid;
    break;
   }

  case 130:
   {
    PLpgSQL_rec *rec = (PLpgSQL_rec *) datum;

    if (rec->erh == ((void*)0) || rec->rectypeid != RECORDOID)
    {

     typeid = rec->rectypeid;
    }
    else
    {

     typeid = rec->erh->er_typeid;
    }
    break;
   }

  case 129:
   {
    PLpgSQL_recfield *recfield = (PLpgSQL_recfield *) datum;
    PLpgSQL_rec *rec;

    rec = (PLpgSQL_rec *) (estate->datums[recfield->recparentno]);






    if (rec->erh == ((void*)0))
     instantiate_empty_record_variable(estate, rec);





    if (unlikely(recfield->rectupledescid != rec->erh->er_tupdesc_id))
    {
     if (!expanded_record_lookup_field(rec->erh,
               recfield->fieldname,
               &recfield->finfo))
      ereport(ERROR,
        (errcode(ERRCODE_UNDEFINED_COLUMN),
         errmsg("record \"%s\" has no field \"%s\"",
          rec->refname, recfield->fieldname)));
     recfield->rectupledescid = rec->erh->er_tupdesc_id;
    }

    typeid = recfield->finfo.ftypeid;
    break;
   }

  default:
   elog(ERROR, "unrecognized dtype: %d", datum->dtype);
   typeid = InvalidOid;
   break;
 }

 return typeid;
}
