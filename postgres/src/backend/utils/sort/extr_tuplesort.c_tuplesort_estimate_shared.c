
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TapeShare ;
typedef int Size ;


 int Assert (int) ;
 int MAXALIGN (int ) ;
 int Sharedsort ;
 int add_size (int ,int ) ;
 int mul_size (int,int) ;
 int offsetof (int ,int ) ;
 int tapes ;

Size
tuplesort_estimate_shared(int nWorkers)
{
 Size tapesSize;

 Assert(nWorkers > 0);


 tapesSize = mul_size(sizeof(TapeShare), nWorkers);
 tapesSize = MAXALIGN(add_size(tapesSize, offsetof(Sharedsort, tapes)));

 return tapesSize;
}
