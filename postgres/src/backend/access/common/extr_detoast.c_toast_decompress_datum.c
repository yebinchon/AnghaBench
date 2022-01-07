
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlena {int dummy; } ;


 int Assert (int ) ;
 int ERROR ;
 int SET_VARSIZE (struct varlena*,scalar_t__) ;
 int TOAST_COMPRESS_RAWDATA (struct varlena*) ;
 scalar_t__ TOAST_COMPRESS_RAWSIZE (struct varlena*) ;
 int TOAST_COMPRESS_SIZE (struct varlena*) ;
 int VARATT_IS_COMPRESSED (struct varlena*) ;
 int VARDATA (struct varlena*) ;
 scalar_t__ VARHDRSZ ;
 int elog (int ,char*) ;
 scalar_t__ palloc (scalar_t__) ;
 scalar_t__ pglz_decompress (int ,int ,int ,scalar_t__,int) ;

__attribute__((used)) static struct varlena *
toast_decompress_datum(struct varlena *attr)
{
 struct varlena *result;

 Assert(VARATT_IS_COMPRESSED(attr));

 result = (struct varlena *)
  palloc(TOAST_COMPRESS_RAWSIZE(attr) + VARHDRSZ);
 SET_VARSIZE(result, TOAST_COMPRESS_RAWSIZE(attr) + VARHDRSZ);

 if (pglz_decompress(TOAST_COMPRESS_RAWDATA(attr),
      TOAST_COMPRESS_SIZE(attr),
      VARDATA(result),
      TOAST_COMPRESS_RAWSIZE(attr), 1) < 0)
  elog(ERROR, "compressed data is corrupted");

 return result;
}
