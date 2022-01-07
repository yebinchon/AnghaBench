
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TriggerTransition ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int isNew ;
 int isTable ;
 int name ;

__attribute__((used)) static bool
_equalTriggerTransition(const TriggerTransition *a, const TriggerTransition *b)
{
 COMPARE_STRING_FIELD(name);
 COMPARE_SCALAR_FIELD(isNew);
 COMPARE_SCALAR_FIELD(isTable);

 return 1;
}
