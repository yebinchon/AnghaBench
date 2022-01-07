
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct _sei_message_t {int dummy; } ;
typedef int sei_message_t ;



uint8_t* sei_message_data(sei_message_t* msg) { return ((uint8_t*)msg) + sizeof(struct _sei_message_t); }
