
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum mysqlnd_connection_state { ____Placeholder_mysqlnd_connection_state } mysqlnd_connection_state ;
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int state; } ;
typedef TYPE_2__ MYSQLND ;


 int const CONN_QUIT_SENT ;
 int const CONN_READY ;
 int GET_CONNECTION_STATE (int *) ;
 TYPE_2__** ecalloc (unsigned int,int) ;

MYSQLND **
mysqlnd_stream_array_check_for_readiness(MYSQLND ** conn_array)
{
 unsigned int cnt = 0;
 MYSQLND **p = conn_array, **p_p;
 MYSQLND **ret = ((void*)0);

 while (*p) {
  const enum mysqlnd_connection_state conn_state = GET_CONNECTION_STATE(&((*p)->data->state));
  if (conn_state <= CONN_READY || conn_state == CONN_QUIT_SENT) {
   cnt++;
  }
  p++;
 }
 if (cnt) {
  MYSQLND **ret_p = ret = ecalloc(cnt + 1, sizeof(MYSQLND *));
  p_p = p = conn_array;
  while (*p) {
   const enum mysqlnd_connection_state conn_state = GET_CONNECTION_STATE(&((*p)->data->state));
   if (conn_state <= CONN_READY || conn_state == CONN_QUIT_SENT) {
    *ret_p = *p;
    *p = ((void*)0);
    ret_p++;
   } else {
    *p_p = *p;
    p_p++;
   }
   p++;
  }
  *ret_p = ((void*)0);
 }
 return ret;
}
