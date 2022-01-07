
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ControlFileData ;


 int Assert (int) ;
 int * ControlFile ;
 int ReadControlFile () ;
 int * palloc (int) ;

void
LocalProcessControlFile(bool reset)
{
 Assert(reset || ControlFile == ((void*)0));
 ControlFile = palloc(sizeof(ControlFileData));
 ReadControlFile();
}
