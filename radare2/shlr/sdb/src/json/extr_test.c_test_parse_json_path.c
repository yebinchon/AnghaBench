
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Rangstr ;


 int json_path_first (int *) ;
 scalar_t__ json_path_next (int *) ;
 int printf (char*,...) ;
 int rangstr_int (int *) ;
 int rangstr_new (char*) ;
 int rangstr_print (int *) ;

int test_parse_json_path() {
 Rangstr rs = rangstr_new ("ping.board[\"pop\"][1][2][\"caca\"].panda");
 json_path_first (&rs);
 do {
  printf (" - ");
  rangstr_print (&rs);
  printf (" Int (%d)", rangstr_int (&rs));
  printf ("\n");
 } while (json_path_next (&rs));
 printf ("--\n");
}
