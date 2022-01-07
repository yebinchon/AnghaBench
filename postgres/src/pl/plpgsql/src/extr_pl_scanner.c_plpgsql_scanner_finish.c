
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scanner_finish (int *) ;
 int * scanorig ;
 int * yyscanner ;

void
plpgsql_scanner_finish(void)
{

 scanner_finish(yyscanner);

 yyscanner = ((void*)0);
 scanorig = ((void*)0);
}
