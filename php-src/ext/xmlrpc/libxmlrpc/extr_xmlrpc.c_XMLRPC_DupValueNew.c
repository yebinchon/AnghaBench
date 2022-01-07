
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int q_iter ;
typedef TYPE_4__* XMLRPC_VALUE ;
struct TYPE_18__ {int len; int str; } ;
struct TYPE_17__ {int len; int str; } ;
struct TYPE_20__ {int type; TYPE_3__* v; int d; int i; TYPE_2__ str; TYPE_1__ id; } ;
struct TYPE_19__ {int type; int q; } ;


 TYPE_4__* Q_Iter_Get_F (int ) ;
 int Q_Iter_Head_F (int ) ;
 int Q_Iter_Next_F (int ) ;
 int XMLRPC_AddValueToVector (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* XMLRPC_CreateValueEmpty () ;
 int XMLRPC_SetIsVector (TYPE_4__*,int ) ;
 int XMLRPC_SetValueDateTime (TYPE_4__*,int ) ;
 int XMLRPC_SetValueDouble (TYPE_4__*,int ) ;
 int XMLRPC_SetValueID (TYPE_4__*,int ,int ) ;
 int XMLRPC_SetValueInt (TYPE_4__*,int ) ;
 int XMLRPC_SetValueString (TYPE_4__*,int ,int ) ;
XMLRPC_VALUE XMLRPC_DupValueNew (XMLRPC_VALUE xSource) {
 XMLRPC_VALUE xReturn = ((void*)0);
 if (xSource) {
  xReturn = XMLRPC_CreateValueEmpty ();
  if (xSource->id.len) {
   XMLRPC_SetValueID (xReturn, xSource->id.str, xSource->id.len);
  }

  switch (xSource->type) {
  case 130:
  case 133:
   XMLRPC_SetValueInt (xReturn, xSource->i);
   break;
  case 129:
  case 134:
   XMLRPC_SetValueString (xReturn, xSource->str.str, xSource->str.len);
   break;
  case 132:
   XMLRPC_SetValueDateTime (xReturn, xSource->i);
   break;
  case 131:
   XMLRPC_SetValueDouble (xReturn, xSource->d);
   break;
  case 128:
   {
    q_iter qi = Q_Iter_Head_F (xSource->v->q);
    XMLRPC_SetIsVector (xReturn, xSource->v->type);

    while (qi) {
     XMLRPC_VALUE xIter = Q_Iter_Get_F (qi);
     XMLRPC_AddValueToVector (xReturn, XMLRPC_DupValueNew (xIter));
     qi = Q_Iter_Next_F (qi);
    }
   }
   break;
  default:
   break;
  }
 }
 return xReturn;
}
