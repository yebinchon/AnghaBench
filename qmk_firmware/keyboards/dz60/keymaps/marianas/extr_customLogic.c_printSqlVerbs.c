
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int SEND_STRING (char*) ;
 int activateRelativity () ;

bool printSqlVerbs(uint16_t keycode, keyrecord_t *record)
{
  if (record->event.pressed)
  {
    switch (keycode)
    {
      case 131:
        SEND_STRING("LEFT JOIN");
        activateRelativity();
        return 0;
      case 132:
        SEND_STRING("INNER JOIN ");
        activateRelativity();
        return 0;
      case 129:
        SEND_STRING("SELECT "); return
        0;
      case 133:
        SEND_STRING("FROM "); return
        0;
      case 134:
        SEND_STRING("DISTINCT "); return
        0;
      case 130:
        SEND_STRING("ORDER BY "); return
        0;
      case 128:
        SEND_STRING("WHERE "); return
        0;
      case 136:
        SEND_STRING("ALTER SESSION SET CURRENT_SCHEMA = SUPPLY;"); return 0;
      case 135:
        SEND_STRING("* "); return 0;

    }
  }
  return 1;
}
