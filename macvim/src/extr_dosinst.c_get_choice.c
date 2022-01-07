
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 int scanf (char*,...) ;

__attribute__((used)) static int
get_choice(char **table, int entries)
{
    int answer;
    int idx;
    char dummy[100];

    do
    {
 for (idx = 0; idx < entries; ++idx)
 {
     if (idx)
  printf("%2d  ", idx);
     printf(table[idx]);
     printf("\n");
 }
 printf("Choice: ");
 if (scanf("%d", &answer) != 1)
 {
     scanf("%99s", dummy);
     answer = 0;
 }
    }
    while (answer < 1 || answer >= entries);

    return answer;
}
