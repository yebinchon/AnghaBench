
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int escape_json (int ,char const*) ;

__attribute__((used)) static void
escape_yaml(StringInfo buf, const char *str)
{
 escape_json(buf, str);
}
