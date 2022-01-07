
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int FIXME (char*,int) ;
__attribute__((used)) static int get_ansi_notification(UINT unicodeNotificationCode)
{
    switch (unicodeNotificationCode)
    {
    case 139:
    case 138: return 139;
    case 137:
    case 136: return 137;
    case 135:
    case 134: return 135;
    case 129:
    case 128: return 129;
    case 131:
    case 130: return 131;
    case 133:
    case 132: return 133;

    case 141:
    case 140: return 141;
    case 149:
    case 148: return 149;
    case 153: return 153;
    case 150: return 150;
    case 145:
    case 144: return 145;
    case 147:
    case 146: return 147;
    case 143:
    case 142: return 143;
    case 152:
    case 151: return 152;
    default: break;
    }
    FIXME("unknown notification %x\n", unicodeNotificationCode);
    return unicodeNotificationCode;
}
