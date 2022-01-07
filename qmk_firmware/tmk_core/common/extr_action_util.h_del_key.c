
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int del_key_from_report (int ,int ) ;
 int keyboard_report ;

inline void del_key(uint8_t key) { del_key_from_report(keyboard_report, key); }
