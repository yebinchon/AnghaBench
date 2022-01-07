
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonbValue ;


 int * palloc (int) ;

__attribute__((used)) static JsonbValue *
copyJsonbValue(JsonbValue *src)
{
 JsonbValue *dst = palloc(sizeof(*dst));

 *dst = *src;

 return dst;
}
