#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  S_ALTER 136 
#define  S_ASTRK 135 
#define  S_DSNCT 134 
#define  S_FROM 133 
#define  S_INRJN 132 
#define  S_LFTJN 131 
#define  S_ORDER 130 
#define  S_SLCT 129 
#define  S_WHERE 128 
 int /*<<< orphan*/  FUNC1 () ; 

bool FUNC2(uint16_t keycode, keyrecord_t *record)
{
  if (record->event.pressed)
  {
    switch (keycode)
    {
      case S_LFTJN: 
        FUNC0("LEFT JOIN"); 
        FUNC1();
        return false;
      case S_INRJN: 
        FUNC0("INNER JOIN "); 
        FUNC1();
        return false;
      case S_SLCT:  
        FUNC0("SELECT "); return 
        false;
      case S_FROM:  
        FUNC0("FROM "); return 
        false;
      case S_DSNCT: 
        FUNC0("DISTINCT "); return 
        false;
      case S_ORDER: 
        FUNC0("ORDER BY "); return 
        false;
      case S_WHERE: 
        FUNC0("WHERE "); return 
        false;
      case S_ALTER: 
        FUNC0("ALTER SESSION SET CURRENT_SCHEMA = SUPPLY;"); return false;
      case S_ASTRK: 
        FUNC0("* "); return false;
        
    }
  }
  return true;
}