
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum e { ____Placeholder_e } e ;


 int printf (char*,int) ;

__attribute__((used)) static int fe(enum e x)
{
 printf("in fe (%d)\n", (int) x);
 return (int)x;
}
