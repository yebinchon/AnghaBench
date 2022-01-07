
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlena {int dummy; } ;
typedef scalar_t__ int32 ;


 int Assert (int ) ;
 int ERROR ;
 int SET_VARSIZE (struct varlena*,scalar_t__) ;
 scalar_t__ TOAST_COMPRESS_HDRSZ ;
 int TOAST_COMPRESS_RAWDATA (struct varlena*) ;
 int VARATT_IS_COMPRESSED (struct varlena*) ;
 int VARDATA (struct varlena*) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (struct varlena*) ;
 int elog (int ,char*) ;
 scalar_t__ palloc (scalar_t__) ;
 scalar_t__ pglz_decompress (int ,scalar_t__,int ,scalar_t__,int) ;

__attribute__((used)) static struct varlena *
toast_decompress_datum_slice(struct varlena *attr, int32 slicelength)
{
 struct varlena *result;
 int32 rawsize;

 Assert(VARATT_IS_COMPRESSED(attr));

 result = (struct varlena *) palloc(slicelength + VARHDRSZ);

 rawsize = pglz_decompress(TOAST_COMPRESS_RAWDATA(attr),
         VARSIZE(attr) - TOAST_COMPRESS_HDRSZ,
         VARDATA(result),
         slicelength, 0);
 if (rawsize < 0)
  elog(ERROR, "compressed data is corrupted");

 SET_VARSIZE(result, rawsize + VARHDRSZ);
 return result;
}
