
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned short t_info; int t_tid; } ;
struct TYPE_6__ {int attLabelType; } ;
typedef TYPE_1__ SpGistState ;
typedef TYPE_2__* SpGistNodeTuple ;
typedef int Size ;
typedef int Datum ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 unsigned short INDEX_NULL_MASK ;
 unsigned int INDEX_SIZE_MASK ;
 int ItemPointerSetInvalid (int *) ;
 int SGNTDATAPTR (TYPE_2__*) ;
 unsigned int SGNTHDRSZ ;
 scalar_t__ SpGistGetTypeSize (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int memcpyDatum (int ,int *,int ) ;
 scalar_t__ palloc0 (unsigned int) ;

SpGistNodeTuple
spgFormNodeTuple(SpGistState *state, Datum label, bool isnull)
{
 SpGistNodeTuple tup;
 unsigned int size;
 unsigned short infomask = 0;


 size = SGNTHDRSZ;
 if (!isnull)
  size += SpGistGetTypeSize(&state->attLabelType, label);





 if ((size & INDEX_SIZE_MASK) != size)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("index row requires %zu bytes, maximum size is %zu",
      (Size) size, (Size) INDEX_SIZE_MASK)));

 tup = (SpGistNodeTuple) palloc0(size);

 if (isnull)
  infomask |= INDEX_NULL_MASK;

 infomask |= size;
 tup->t_info = infomask;


 ItemPointerSetInvalid(&tup->t_tid);

 if (!isnull)
  memcpyDatum(SGNTDATAPTR(tup), &state->attLabelType, label);

 return tup;
}
