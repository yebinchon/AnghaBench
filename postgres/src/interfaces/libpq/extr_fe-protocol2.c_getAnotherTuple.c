
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int std_bitmap ;
struct TYPE_17__ {int rowBufLen; int asyncStatus; TYPE_2__* result; int errorMessage; scalar_t__ inEnd; scalar_t__ inStart; scalar_t__ inCursor; scalar_t__ inBuffer; TYPE_3__* rowBuf; } ;
struct TYPE_16__ {int len; scalar_t__ value; } ;
struct TYPE_15__ {int numAttributes; int binary; TYPE_1__* attDescs; } ;
struct TYPE_14__ {int format; } ;
typedef TYPE_2__ PGresult ;
typedef TYPE_3__ PGdataValue ;
typedef TYPE_4__ PGconn ;


 int BITS_PER_BYTE ;
 int EOF ;
 int NULL_LEN ;
 int PGASYNC_READY ;
 int PGRES_FATAL_ERROR ;
 TYPE_2__* PQmakeEmptyPGresult (TYPE_4__*,int ) ;
 int free (char*) ;
 char* libpq_gettext (char*) ;
 scalar_t__ malloc (size_t) ;
 int pqClearAsyncResult (TYPE_4__*) ;
 scalar_t__ pqGetInt (int*,int,TYPE_4__*) ;
 scalar_t__ pqGetnchar (char*,size_t,TYPE_4__*) ;
 scalar_t__ pqRowProcessor (TYPE_4__*,char const**) ;
 scalar_t__ pqSkipnchar (int,TYPE_4__*) ;
 int printfPQExpBuffer (int *,char*,char const*) ;
 scalar_t__ realloc (TYPE_3__*,int) ;

__attribute__((used)) static int
getAnotherTuple(PGconn *conn, bool binary)
{
 PGresult *result = conn->result;
 int nfields = result->numAttributes;
 const char *errmsg;
 PGdataValue *rowbuf;


 char std_bitmap[64];
 char *bitmap = std_bitmap;
 int i;
 size_t nbytes;
 char bmap;
 int bitmap_index;
 int bitcnt;
 int vlen;


 rowbuf = conn->rowBuf;
 if (nfields > conn->rowBufLen)
 {
  rowbuf = (PGdataValue *) realloc(rowbuf,
           nfields * sizeof(PGdataValue));
  if (!rowbuf)
  {
   errmsg = ((void*)0);
   goto advance_and_error;
  }
  conn->rowBuf = rowbuf;
  conn->rowBufLen = nfields;
 }


 result->binary = binary;





 if (binary)
 {
  for (i = 0; i < nfields; i++)
   result->attDescs[i].format = 1;
 }


 nbytes = (nfields + BITS_PER_BYTE - 1) / BITS_PER_BYTE;

 if (nbytes > sizeof(std_bitmap))
 {
  bitmap = (char *) malloc(nbytes);
  if (!bitmap)
  {
   errmsg = ((void*)0);
   goto advance_and_error;
  }
 }

 if (pqGetnchar(bitmap, nbytes, conn))
  goto EOFexit;


 bitmap_index = 0;
 bmap = bitmap[bitmap_index];
 bitcnt = 0;

 for (i = 0; i < nfields; i++)
 {

  if (!(bmap & 0200))
   vlen = NULL_LEN;
  else if (pqGetInt(&vlen, 4, conn))
   goto EOFexit;
  else
  {
   if (!binary)
    vlen = vlen - 4;
   if (vlen < 0)
    vlen = 0;
  }
  rowbuf[i].len = vlen;






  rowbuf[i].value = conn->inBuffer + conn->inCursor;


  if (vlen > 0)
  {
   if (pqSkipnchar(vlen, conn))
    goto EOFexit;
  }


  bitcnt++;
  if (bitcnt == BITS_PER_BYTE)
  {
   bitmap_index++;
   bmap = bitmap[bitmap_index];
   bitcnt = 0;
  }
  else
   bmap <<= 1;
 }


 if (bitmap != std_bitmap)
  free(bitmap);
 bitmap = ((void*)0);


 conn->inStart = conn->inCursor;


 errmsg = ((void*)0);
 if (pqRowProcessor(conn, &errmsg))
  return 0;

 goto set_error_result;

advance_and_error:






 conn->inStart = conn->inEnd;

set_error_result:





 pqClearAsyncResult(conn);







 if (!errmsg)
  errmsg = libpq_gettext("out of memory for query result");

 printfPQExpBuffer(&conn->errorMessage, "%s\n", errmsg);





 conn->result = PQmakeEmptyPGresult(conn, PGRES_FATAL_ERROR);
 conn->asyncStatus = PGASYNC_READY;

EOFexit:
 if (bitmap != ((void*)0) && bitmap != std_bitmap)
  free(bitmap);
 return EOF;
}
