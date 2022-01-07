
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int biton32 (int ) ;
 int default_layer_state ;
 int dprintf (char*,int ,int ) ;

void default_layer_debug(void) { dprintf("%08lX(%u)", default_layer_state, biton32(default_layer_state)); }
