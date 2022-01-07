
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonNode ;


 int * mkstring (int ) ;
 int strdup (char const*) ;

JsonNode *json_mkstring(const char *s)
{
 return mkstring(strdup(s));
}
