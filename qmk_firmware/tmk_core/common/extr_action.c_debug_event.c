
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int row; int col; } ;
struct TYPE_5__ {int time; scalar_t__ pressed; TYPE_1__ key; } ;
typedef TYPE_2__ keyevent_t ;


 int dprintf (char*,int,char,int ) ;

void debug_event(keyevent_t event) { dprintf("%04X%c(%u)", (event.key.row << 8 | event.key.col), (event.pressed ? 'd' : 'u'), event.time); }
