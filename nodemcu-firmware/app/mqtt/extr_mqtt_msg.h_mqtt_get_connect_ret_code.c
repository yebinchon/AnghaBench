
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline uint8_t mqtt_get_connect_ret_code(uint8_t* buffer) { return (buffer[3]); }
