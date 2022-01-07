
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lineno; int firstfield; int refname; int dno; int * erh; int rectypeid; int * datatype; int dtype; } ;
typedef int PLpgSQL_type ;
typedef TYPE_1__ PLpgSQL_rec ;
typedef int PLpgSQL_datum ;
typedef int Oid ;


 int PLPGSQL_DTYPE_REC ;
 int PLPGSQL_NSTYPE_REC ;
 TYPE_1__* palloc0 (int) ;
 int plpgsql_adddatum (int *) ;
 int plpgsql_ns_additem (int ,int ,int ) ;
 int pstrdup (char const*) ;

PLpgSQL_rec *
plpgsql_build_record(const char *refname, int lineno,
      PLpgSQL_type *dtype, Oid rectypeid,
      bool add2namespace)
{
 PLpgSQL_rec *rec;

 rec = palloc0(sizeof(PLpgSQL_rec));
 rec->dtype = PLPGSQL_DTYPE_REC;
 rec->refname = pstrdup(refname);
 rec->lineno = lineno;

 rec->datatype = dtype;
 rec->rectypeid = rectypeid;
 rec->firstfield = -1;
 rec->erh = ((void*)0);
 plpgsql_adddatum((PLpgSQL_datum *) rec);
 if (add2namespace)
  plpgsql_ns_additem(PLPGSQL_NSTYPE_REC, rec->dno, rec->refname);

 return rec;
}
