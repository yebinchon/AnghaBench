
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonNode ;


 char* json_stringify (int const*,int *) ;

char *json_encode(const JsonNode *node)
{
 return json_stringify(node, ((void*)0));
}
