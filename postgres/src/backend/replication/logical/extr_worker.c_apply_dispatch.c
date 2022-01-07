
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int apply_handle_begin (int ) ;
 int apply_handle_commit (int ) ;
 int apply_handle_delete (int ) ;
 int apply_handle_insert (int ) ;
 int apply_handle_origin (int ) ;
 int apply_handle_relation (int ) ;
 int apply_handle_truncate (int ) ;
 int apply_handle_type (int ) ;
 int apply_handle_update (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char) ;
 char pq_getmsgbyte (int ) ;

__attribute__((used)) static void
apply_dispatch(StringInfo s)
{
 char action = pq_getmsgbyte(s);

 switch (action)
 {

  case 'B':
   apply_handle_begin(s);
   break;

  case 'C':
   apply_handle_commit(s);
   break;

  case 'I':
   apply_handle_insert(s);
   break;

  case 'U':
   apply_handle_update(s);
   break;

  case 'D':
   apply_handle_delete(s);
   break;

  case 'T':
   apply_handle_truncate(s);
   break;

  case 'R':
   apply_handle_relation(s);
   break;

  case 'Y':
   apply_handle_type(s);
   break;

  case 'O':
   apply_handle_origin(s);
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("invalid logical replication message type \"%c\"", action)));
 }
}
