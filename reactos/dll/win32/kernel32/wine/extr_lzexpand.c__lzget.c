
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzstate {int getcur; int getlen; int * get; int realfd; } ;
typedef int BYTE ;


 int GETLEN ;
 int HFILE_ERROR ;
 int _lread (int ,int *,int ) ;

__attribute__((used)) static int
_lzget(struct lzstate *lzs,BYTE *b) {
 if (lzs->getcur<lzs->getlen) {
  *b = lzs->get[lzs->getcur++];
  return 1;
 } else {
  int ret = _lread(lzs->realfd,lzs->get,GETLEN);
  if (ret==HFILE_ERROR)
   return HFILE_ERROR;
  if (ret==0)
   return 0;
  lzs->getlen = ret;
  lzs->getcur = 1;
  *b = *(lzs->get);
  return 1;
 }
}
