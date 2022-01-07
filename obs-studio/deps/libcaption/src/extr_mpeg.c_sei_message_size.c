
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _sei_message_t {size_t size; } ;
typedef int sei_message_t ;



size_t sei_message_size(sei_message_t* msg) { return ((struct _sei_message_t*)msg)->size; }
