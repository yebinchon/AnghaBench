
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int firstfield; scalar_t__ dno; } ;
struct TYPE_6__ {scalar_t__ dtype; scalar_t__ recparentno; int nextfield; int dno; int rectupledescid; int fieldname; } ;
typedef TYPE_1__ PLpgSQL_recfield ;
typedef TYPE_2__ PLpgSQL_rec ;
typedef int PLpgSQL_datum ;


 int Assert (int) ;
 int INVALID_TUPLEDESC_IDENTIFIER ;
 scalar_t__ PLPGSQL_DTYPE_RECFIELD ;
 TYPE_1__* palloc0 (int) ;
 scalar_t__* plpgsql_Datums ;
 int plpgsql_adddatum (int *) ;
 int pstrdup (char const*) ;
 scalar_t__ strcmp (int ,char const*) ;

PLpgSQL_recfield *
plpgsql_build_recfield(PLpgSQL_rec *rec, const char *fldname)
{
 PLpgSQL_recfield *recfield;
 int i;


 i = rec->firstfield;
 while (i >= 0)
 {
  PLpgSQL_recfield *fld = (PLpgSQL_recfield *) plpgsql_Datums[i];

  Assert(fld->dtype == PLPGSQL_DTYPE_RECFIELD &&
      fld->recparentno == rec->dno);
  if (strcmp(fld->fieldname, fldname) == 0)
   return fld;
  i = fld->nextfield;
 }


 recfield = palloc0(sizeof(PLpgSQL_recfield));
 recfield->dtype = PLPGSQL_DTYPE_RECFIELD;
 recfield->fieldname = pstrdup(fldname);
 recfield->recparentno = rec->dno;
 recfield->rectupledescid = INVALID_TUPLEDESC_IDENTIFIER;

 plpgsql_adddatum((PLpgSQL_datum *) recfield);


 recfield->nextfield = rec->firstfield;
 rec->firstfield = recfield->dno;

 return recfield;
}
