
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TriggerTransition ;
typedef int StringInfo ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int isNew ;
 int isTable ;
 int name ;

__attribute__((used)) static void
_outTriggerTransition(StringInfo str, const TriggerTransition *node)
{
 WRITE_NODE_TYPE("TRIGGERTRANSITION");

 WRITE_STRING_FIELD(name);
 WRITE_BOOL_FIELD(isNew);
 WRITE_BOOL_FIELD(isTable);
}
