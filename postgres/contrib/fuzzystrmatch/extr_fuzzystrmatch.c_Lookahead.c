
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char
Lookahead(char *word, int how_far)
{
 char letter_ahead = '\0';
 int idx;

 for (idx = 0; word[idx] != '\0' && idx < how_far; idx++);


 letter_ahead = word[idx];

 return letter_ahead;
}
