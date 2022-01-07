
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_keys_from_report (int ) ;
 int keyboard_report ;

inline void clear_keys(void) { clear_keys_from_report(keyboard_report); }
