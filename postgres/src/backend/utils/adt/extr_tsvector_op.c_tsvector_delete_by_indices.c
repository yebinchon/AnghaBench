
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint16 ;
typedef int WordEntryPos ;
struct TYPE_12__ {int pos; int len; scalar_t__ haspos; } ;
typedef TYPE_1__ WordEntry ;
struct TYPE_13__ {int size; } ;
typedef TYPE_2__* TSVector ;


 TYPE_1__* ARRPTR (TYPE_2__*) ;
 int Assert (int) ;
 int CALCDATASIZE (int,int) ;
 int POSDATALEN (TYPE_2__*,TYPE_1__*) ;
 int SET_VARSIZE (TYPE_2__*,int ) ;
 int SHORTALIGN (int) ;
 char* STRPTR (TYPE_2__*) ;
 int VARSIZE (TYPE_2__*) ;
 int compare_int ;
 int memcpy (char*,char*,int) ;
 scalar_t__ palloc0 (int ) ;
 int qsort (int*,int,int,int ) ;
 int qunique (int*,int,int,int ) ;

__attribute__((used)) static TSVector
tsvector_delete_by_indices(TSVector tsv, int *indices_to_delete,
         int indices_count)
{
 TSVector tsout;
 WordEntry *arrin = ARRPTR(tsv),
      *arrout;
 char *data = STRPTR(tsv),
      *dataout;
 int i,
    j,
    k,
    curoff;






 if (indices_count > 1)
 {
  qsort(indices_to_delete, indices_count, sizeof(int), compare_int);
  indices_count = qunique(indices_to_delete, indices_count, sizeof(int),
        compare_int);
 }





 tsout = (TSVector) palloc0(VARSIZE(tsv));


 tsout->size = tsv->size - indices_count;




 arrout = ARRPTR(tsout);
 dataout = STRPTR(tsout);
 curoff = 0;
 for (i = j = k = 0; i < tsv->size; i++)
 {





  if (k < indices_count && i == indices_to_delete[k])
  {
   k++;
   continue;
  }


  memcpy(dataout + curoff, data + arrin[i].pos, arrin[i].len);
  arrout[j].haspos = arrin[i].haspos;
  arrout[j].len = arrin[i].len;
  arrout[j].pos = curoff;
  curoff += arrin[i].len;
  if (arrin[i].haspos)
  {
   int len = POSDATALEN(tsv, arrin + i) * sizeof(WordEntryPos)
   + sizeof(uint16);

   curoff = SHORTALIGN(curoff);
   memcpy(dataout + curoff,
       STRPTR(tsv) + SHORTALIGN(arrin[i].pos + arrin[i].len),
       len);
   curoff += len;
  }

  j++;
 }






 Assert(k == indices_count);

 SET_VARSIZE(tsout, CALCDATASIZE(tsout->size, curoff));
 return tsout;
}
