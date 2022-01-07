
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Rangstr ;


 int json_get (char*,char*) ;
 int printf (char*) ;
 int rangstr_print (int *) ;

int test_main () {
 Rangstr rs ;

 rs = json_get ("{\"hello\":\"world\"}", "hello");
printf ("OUT: ");
rangstr_print (&rs);
printf ("\n");

printf ("--\n");
 rs = json_get ("{\"hello\":{\"world\":123}}", "hello.world");
printf ("OUT: ");
rangstr_print (&rs);
printf ("\n");
 return 0;
}
