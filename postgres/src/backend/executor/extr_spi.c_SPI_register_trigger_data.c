
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ tg_oldtable; TYPE_2__* tg_relation; TYPE_1__* tg_trigger; scalar_t__ tg_newtable; } ;
typedef TYPE_4__ TriggerData ;
struct TYPE_11__ {void* enrtuples; void* enrtype; int * tupdesc; int reliddesc; int name; } ;
struct TYPE_13__ {scalar_t__ reldata; TYPE_3__ md; } ;
struct TYPE_10__ {int rd_id; } ;
struct TYPE_9__ {int tgoldtable; int tgnewtable; } ;
typedef int EphemeralNamedRelationData ;
typedef TYPE_5__* EphemeralNamedRelation ;


 void* ENR_NAMED_TUPLESTORE ;
 int SPI_ERROR_ARGUMENT ;
 int SPI_OK_REL_REGISTER ;
 int SPI_OK_TD_REGISTER ;
 int SPI_register_relation (TYPE_5__*) ;
 TYPE_5__* palloc (int) ;
 void* tuplestore_tuple_count (scalar_t__) ;

int
SPI_register_trigger_data(TriggerData *tdata)
{
 if (tdata == ((void*)0))
  return SPI_ERROR_ARGUMENT;

 if (tdata->tg_newtable)
 {
  EphemeralNamedRelation enr =
  palloc(sizeof(EphemeralNamedRelationData));
  int rc;

  enr->md.name = tdata->tg_trigger->tgnewtable;
  enr->md.reliddesc = tdata->tg_relation->rd_id;
  enr->md.tupdesc = ((void*)0);
  enr->md.enrtype = ENR_NAMED_TUPLESTORE;
  enr->md.enrtuples = tuplestore_tuple_count(tdata->tg_newtable);
  enr->reldata = tdata->tg_newtable;
  rc = SPI_register_relation(enr);
  if (rc != SPI_OK_REL_REGISTER)
   return rc;
 }

 if (tdata->tg_oldtable)
 {
  EphemeralNamedRelation enr =
  palloc(sizeof(EphemeralNamedRelationData));
  int rc;

  enr->md.name = tdata->tg_trigger->tgoldtable;
  enr->md.reliddesc = tdata->tg_relation->rd_id;
  enr->md.tupdesc = ((void*)0);
  enr->md.enrtype = ENR_NAMED_TUPLESTORE;
  enr->md.enrtuples = tuplestore_tuple_count(tdata->tg_oldtable);
  enr->reldata = tdata->tg_oldtable;
  rc = SPI_register_relation(enr);
  if (rc != SPI_OK_REL_REGISTER)
   return rc;
 }

 return SPI_OK_TD_REGISTER;
}
