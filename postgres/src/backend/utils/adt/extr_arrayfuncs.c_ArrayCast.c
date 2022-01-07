
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int fetch_att (char*,int,int) ;

__attribute__((used)) static Datum
ArrayCast(char *value, bool byval, int len)
{
 return fetch_att(value, byval, len);
}
