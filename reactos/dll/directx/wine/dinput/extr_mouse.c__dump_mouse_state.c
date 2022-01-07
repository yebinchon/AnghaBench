
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rgbButtons; int lZ; int lY; int lX; } ;
typedef TYPE_1__ DIMOUSESTATE2 ;


 int TRACE (char*,...) ;
 int TRACE_ON (int ) ;
 int dinput ;

__attribute__((used)) static void _dump_mouse_state(const DIMOUSESTATE2 *m_state)
{
    int i;

    if (!TRACE_ON(dinput)) return;

    TRACE("(X: %d Y: %d Z: %d", m_state->lX, m_state->lY, m_state->lZ);
    for (i = 0; i < 5; i++) TRACE(" B%d: %02x", i, m_state->rgbButtons[i]);
    TRACE(")\n");
}
