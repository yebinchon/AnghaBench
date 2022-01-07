
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sei_message_t ;


 int free (int *) ;

void sei_message_free(sei_message_t* msg)
{
    if (msg) {
        free(msg);
    }
}
