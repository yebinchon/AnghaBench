
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct varlena {int dummy; } ;
typedef scalar_t__ int32 ;
struct TYPE_3__ {scalar_t__ min_input_size; scalar_t__ max_input_size; } ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetPointer (int ) ;
 scalar_t__ PGLZ_MAX_OUTPUT (scalar_t__) ;
 TYPE_1__* PGLZ_strategy_default ;
 int PointerGetDatum (struct varlena*) ;
 int SET_VARSIZE_COMPRESSED (struct varlena*,scalar_t__) ;
 scalar_t__ TOAST_COMPRESS_HDRSZ ;
 int TOAST_COMPRESS_RAWDATA (struct varlena*) ;
 int TOAST_COMPRESS_SET_RAWSIZE (struct varlena*,scalar_t__) ;
 int VARATT_IS_COMPRESSED (int ) ;
 int VARATT_IS_EXTERNAL (int ) ;
 int VARDATA_ANY (int ) ;
 scalar_t__ VARSIZE_ANY_EXHDR (int ) ;
 scalar_t__ palloc (scalar_t__) ;
 int pfree (struct varlena*) ;
 scalar_t__ pglz_compress (int ,scalar_t__,int ,TYPE_1__*) ;

Datum
toast_compress_datum(Datum value)
{
 struct varlena *tmp;
 int32 valsize = VARSIZE_ANY_EXHDR(DatumGetPointer(value));
 int32 len;

 Assert(!VARATT_IS_EXTERNAL(DatumGetPointer(value)));
 Assert(!VARATT_IS_COMPRESSED(DatumGetPointer(value)));





 if (valsize < PGLZ_strategy_default->min_input_size ||
  valsize > PGLZ_strategy_default->max_input_size)
  return PointerGetDatum(((void*)0));

 tmp = (struct varlena *) palloc(PGLZ_MAX_OUTPUT(valsize) +
         TOAST_COMPRESS_HDRSZ);
 len = pglz_compress(VARDATA_ANY(DatumGetPointer(value)),
      valsize,
      TOAST_COMPRESS_RAWDATA(tmp),
      PGLZ_strategy_default);
 if (len >= 0 &&
  len + TOAST_COMPRESS_HDRSZ < valsize - 2)
 {
  TOAST_COMPRESS_SET_RAWSIZE(tmp, valsize);
  SET_VARSIZE_COMPRESSED(tmp, len + TOAST_COMPRESS_HDRSZ);

  return PointerGetDatum(tmp);
 }
 else
 {

  pfree(tmp);
  return PointerGetDatum(((void*)0));
 }
}
