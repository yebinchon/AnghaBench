
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug (char*) ;
 int debug_record (int ) ;
 int tapping_key ;

__attribute__((used)) static void debug_tapping_key(void) {
    debug("TAPPING_KEY=");
    debug_record(tapping_key);
    debug("\n");
}
