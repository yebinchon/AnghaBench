
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dno; } ;
typedef TYPE_1__ PLpgSQL_datum ;


 int datums_alloc ;
 TYPE_1__** plpgsql_Datums ;
 int plpgsql_nDatums ;
 TYPE_1__** repalloc (TYPE_1__**,int) ;

void
plpgsql_adddatum(PLpgSQL_datum *newdatum)
{
 if (plpgsql_nDatums == datums_alloc)
 {
  datums_alloc *= 2;
  plpgsql_Datums = repalloc(plpgsql_Datums, sizeof(PLpgSQL_datum *) * datums_alloc);
 }

 newdatum->dno = plpgsql_nDatums;
 plpgsql_Datums[plpgsql_nDatums++] = newdatum;
}
