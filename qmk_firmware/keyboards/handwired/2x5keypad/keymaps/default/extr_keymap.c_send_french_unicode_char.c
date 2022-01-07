
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int send_unicode_hex_string (char*) ;

void send_french_unicode_char(uint8_t count, char *once, char *twice)
{
    if (count <= 1)
 send_unicode_hex_string(once);
    else
 send_unicode_hex_string(twice);
}
