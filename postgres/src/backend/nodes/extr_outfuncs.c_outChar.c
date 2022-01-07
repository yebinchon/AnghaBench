
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int outToken (int ,char*) ;

__attribute__((used)) static void
outChar(StringInfo str, char c)
{
 char in[2];

 in[0] = c;
 in[1] = '\0';

 outToken(str, in);
}
