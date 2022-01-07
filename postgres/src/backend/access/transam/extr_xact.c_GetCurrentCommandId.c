
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandId ;


 int Assert (int) ;
 int IsParallelWorker () ;
 int currentCommandId ;
 int currentCommandIdUsed ;

CommandId
GetCurrentCommandId(bool used)
{

 if (used)
 {






  Assert(!IsParallelWorker());
  currentCommandIdUsed = 1;
 }
 return currentCommandId;
}
