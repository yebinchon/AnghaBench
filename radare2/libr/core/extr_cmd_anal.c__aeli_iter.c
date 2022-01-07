
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int k; TYPE_3__* u; } ;
typedef TYPE_2__ dictkv ;
struct TYPE_7__ {TYPE_1__* handler; } ;
struct TYPE_5__ {scalar_t__ name; } ;
typedef TYPE_3__ RAnalEsilInterrupt ;


 scalar_t__ _handler_no_name ;
 int r_cons_printf (char*,int ,scalar_t__) ;

__attribute__((used)) static int _aeli_iter(dictkv* kv, void* ud) {
 RAnalEsilInterrupt* interrupt = kv->u;
 r_cons_printf ("%3x: %s\n", kv->k, interrupt->handler->name ? interrupt->handler->name : _handler_no_name);
 return 0;
}
