
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int process_api_user (int ,int *) ;

__attribute__((weak)) bool process_api_keyboard(uint8_t length, uint8_t* data) { return process_api_user(length, data); }
