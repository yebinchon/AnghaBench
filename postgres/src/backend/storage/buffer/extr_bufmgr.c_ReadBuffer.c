
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;
typedef int BlockNumber ;


 int MAIN_FORKNUM ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,int ,int ,int *) ;

Buffer
ReadBuffer(Relation reln, BlockNumber blockNum)
{
 return ReadBufferExtended(reln, MAIN_FORKNUM, blockNum, RBM_NORMAL, ((void*)0));
}
