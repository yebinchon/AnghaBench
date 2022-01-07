
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int add_key_to_report (int ,int ) ;
 int keyboard_report ;

inline void add_key(uint8_t key) { add_key_to_report(keyboard_report, key); }
