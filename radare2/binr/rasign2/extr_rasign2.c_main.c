
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blob_version (char*) ;
 int getopt (int,char**,char*) ;
 size_t optind ;
 int rasign_show_help () ;

int main(int argc, char **argv) {
 int c;
 int action = 0;
 int rad = 0;
 int json = 0;


 while ((c=getopt (argc, argv, "o:hrsj:iV")) !=-1) {
  switch (c) {
  case 'o':

   break;
  case 's':
   action = c;

   break;
  case 'r':
   rad = 1;
   break;
  case 'j':
   json = 1;
   break;
  case 'V':
   return blob_version ("rasign2");
  default:
   return rasign_show_help ();
  }
 }

 if (argv[optind]==((void*)0))
  return rasign_show_help ();



 switch (action) {
 case 's':


  break;
 default:


  break;
 }



 return 0;
}
