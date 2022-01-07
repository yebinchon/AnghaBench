
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* NICHOST ;
 char* host ;
 int optset ;
 int strcmp (char*,char*) ;

void getwhoisserver(int argc, char **argv)
{
 int i = 1;

    while(i < argc)
 {
  if (!strcmp(argv[i], "-h"))
  {
   if (i + 2 < argc)
   {
    host = argv[i +1];
    optset = i + 1;
   }
   else
   {
    optset = argc;
   }
   return;
  }
  i++;
 }
 host = NICHOST;
 optset = 1;
}
