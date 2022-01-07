
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int biton32 (int ) ;
 int dprintf (char*,int ,int ) ;
 int layer_state ;

void layer_debug(void) { dprintf("%08lX(%u)", layer_state, biton32(layer_state)); }
