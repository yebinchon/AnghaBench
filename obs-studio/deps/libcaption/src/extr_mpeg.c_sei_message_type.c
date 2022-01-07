
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sei_message_t {int type; } ;
typedef int sei_msgtype_t ;
typedef int sei_message_t ;



sei_msgtype_t sei_message_type(sei_message_t* msg) { return ((struct _sei_message_t*)msg)->type; }
