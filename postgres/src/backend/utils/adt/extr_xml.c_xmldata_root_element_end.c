
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendStringInfo (int ,char*,char const*) ;

__attribute__((used)) static void
xmldata_root_element_end(StringInfo result, const char *eltname)
{
 appendStringInfo(result, "</%s>\n", eltname);
}
