
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int jf_targetList; } ;
typedef TYPE_1__ JunkFilter ;
typedef int AttrNumber ;


 int ExecFindJunkAttributeInTlist (int ,char const*) ;

AttrNumber
ExecFindJunkAttribute(JunkFilter *junkfilter, const char *attrName)
{
 return ExecFindJunkAttributeInTlist(junkfilter->jf_targetList, attrName);
}
