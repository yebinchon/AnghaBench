
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRegex ;


 int printf (char*,...) ;
 int r_regex_exec (int *,char const*,int ,int ,int ) ;
 int r_regex_free (int *) ;
 int * r_regex_new (char const*,char*) ;
 int test_or () ;

int main(int argc, char **argv) {
 const char *needle = "^hi";
 const char *haystack_1 = "patata";
 const char *haystack_2 = "hillow";
 if (argc>3) {
  needle = argv[1];
  haystack_1 = argv[2];
  haystack_2 = argv[3];
 } else printf ("Using default values\n");
 RRegex *rx = r_regex_new (needle, "");
 if (rx) {
  int res = r_regex_exec (rx, haystack_1, 0, 0, 0);
  printf ("result (%s) = %d\n", haystack_1, res);
  res = r_regex_exec (rx, haystack_2, 0, 0, 0);
  printf ("result (%s) = %d\n", haystack_2, res);
  r_regex_free (rx);
 } else printf ("oops, cannot compile regexp\n");
 test_or();
 return 0;
}
