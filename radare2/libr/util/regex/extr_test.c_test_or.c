
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRegex ;


 int printf (char*,char*,int) ;
 int r_regex_check (int *,char*) ;
 int r_regex_exec (int *,char*,int ,int ,int) ;
 int r_regex_free (int *) ;
 int r_regex_match (char*,char*,char*) ;
 int * r_regex_new (char*,char*) ;

__attribute__((used)) static void test_or() {
 RRegex *rx = r_regex_new ("(eax|ebx)", "e");
 printf ("result (%s) = %d\n", "mov eax", r_regex_match("(eax|ebx)", "e", "mov eax"));
 printf ("result (%s) = %d\n", "mov ebx", r_regex_match("(eax|ebx)", "e", "mov ebx"));
 printf ("result (%s) = %d\n", "mov eax", r_regex_match("(eax|ebx)", "e", "mov ecx"));
 printf ("result (%s) = %d\n", "mov ebx", r_regex_match("(eax|ecx)", "e", "mov ebx"));
 printf ("result (%s) = %d\n", "mov eax", r_regex_check(rx, "mov eax"));
 printf ("result (%s) = %d\n", "mov ebx", r_regex_check(rx, "mov ebx"));
 printf ("result (%s) = %d\n", "mov eax", r_regex_exec(rx, "mov eax", 0, 0, 1));
 printf ("result (%s) = %d\n", "mov ebx", r_regex_exec(rx, "mov ebx", 0, 0, 1));
 r_regex_free (rx);
}
