
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct varlena {int dummy; } ;
typedef int bytea ;
struct TYPE_3__ {int pageno; int loid; int data; } ;
typedef TYPE_1__* Form_pg_largeobject ;


 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int LOBLKSIZE ;
 scalar_t__ VARATT_IS_EXTENDED (int *) ;
 int VARHDRSZ ;
 int VARSIZE (int *) ;
 scalar_t__ detoast_attr (struct varlena*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ,int) ;

__attribute__((used)) static void
getdatafield(Form_pg_largeobject tuple,
    bytea **pdatafield,
    int *plen,
    bool *pfreeit)
{
 bytea *datafield;
 int len;
 bool freeit;

 datafield = &(tuple->data);
 freeit = 0;
 if (VARATT_IS_EXTENDED(datafield))
 {
  datafield = (bytea *)
   detoast_attr((struct varlena *) datafield);
  freeit = 1;
 }
 len = VARSIZE(datafield) - VARHDRSZ;
 if (len < 0 || len > LOBLKSIZE)
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("pg_largeobject entry for OID %u, page %d has invalid data field size %d",
      tuple->loid, tuple->pageno, len)));
 *pdatafield = datafield;
 *plen = len;
 *pfreeit = freeit;
}
