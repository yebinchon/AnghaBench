
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
 int deactivateRelativity () ;
 int deletePrev () ;
 int eraseCharCounts () ;
 int eraseKeyCodes () ;
 int eraseTableAbbreviation () ;
 int isShifted () ;
 int printTableAbbreviation () ;
 int printTableAbbreviationLimited () ;
 int processSmartMacroTap (int) ;
 int register_code (int const) ;
 int relativityActive ;
 int tempOff ;
 int unregister_code (int const) ;

bool handleSmartMacros(uint16_t keycode, keyrecord_t *record)
{
  if (relativityActive != 1) return 1;
  if (record->event.pressed)
  {
    switch (keycode)
    {
      case 155:
        if (!isShifted()){
          deletePrev();
        }
        else {
          register_code(155);
          unregister_code(155);
        }
        return 0;
      case 157:
      case 156:
      case 154:
      case 153:
      case 152:
      case 150:
      case 149:
      case 148:
      case 147:
      case 146:
      case 145:
      case 144:
      case 143:
      case 142:
      case 141:
      case 140:
      case 139:
      case 138:
      case 137:
      case 135:
      case 134:
      case 133:
      case 132:
      case 131:
      case 130:
      case 129:
        return processSmartMacroTap(keycode);

      case 128:
        if (tempOff)
        {
          SEND_STRING("Id = ");
          printTableAbbreviationLimited();
          SEND_STRING(".Id");
          return deactivateRelativity();
        }
        else
        {
          printTableAbbreviation();
          SEND_STRING("ON ");
          printTableAbbreviationLimited();
          eraseKeyCodes();
          eraseTableAbbreviation();
          eraseCharCounts();
          tempOff = 1;
          return 1;
        }


      case 136:
        printTableAbbreviation();
          return deactivateRelativity();
      case 158:
        if (tempOff)
        {
          SEND_STRING("Id = ");
          printTableAbbreviationLimited();
          SEND_STRING(".Id");
          deactivateRelativity();
          return 1;
        }
        else
        {
          printTableAbbreviation();
          deactivateRelativity();
          return 1;
        }
      case 151:
          return deactivateRelativity();
    }
  }
  return 1;
}
