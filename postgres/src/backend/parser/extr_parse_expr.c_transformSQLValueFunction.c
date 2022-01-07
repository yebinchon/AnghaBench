
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int op; void* type; void* typmod; } ;
typedef TYPE_1__ SQLValueFunction ;
typedef int ParseState ;
typedef int Node ;


 void* DATEOID ;
 void* NAMEOID ;
 void* TIMEOID ;
 void* TIMESTAMPOID ;
 void* TIMESTAMPTZOID ;
 void* TIMETZOID ;
 void* anytime_typmod_check (int,void*) ;
 void* anytimestamp_typmod_check (int,void*) ;

__attribute__((used)) static Node *
transformSQLValueFunction(ParseState *pstate, SQLValueFunction *svf)
{




 switch (svf->op)
 {
  case 141:
   svf->type = DATEOID;
   break;
  case 138:
   svf->type = TIMETZOID;
   break;
  case 135:
   svf->type = TIMETZOID;
   svf->typmod = anytime_typmod_check(1, svf->typmod);
   break;
  case 137:
   svf->type = TIMESTAMPTZOID;
   break;
  case 136:
   svf->type = TIMESTAMPTZOID;
   svf->typmod = anytimestamp_typmod_check(1, svf->typmod);
   break;
  case 133:
   svf->type = TIMEOID;
   break;
  case 130:
   svf->type = TIMEOID;
   svf->typmod = anytime_typmod_check(0, svf->typmod);
   break;
  case 132:
   svf->type = TIMESTAMPOID;
   break;
  case 131:
   svf->type = TIMESTAMPOID;
   svf->typmod = anytimestamp_typmod_check(0, svf->typmod);
   break;
  case 140:
  case 134:
  case 128:
  case 129:
  case 142:
  case 139:
   svf->type = NAMEOID;
   break;
 }

 return (Node *) svf;
}
