
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dynamic; int length; int * stream; } ;
struct TYPE_8__ {TYPE_1__ string; } ;
struct TYPE_9__ {TYPE_2__ asnValue; int asnType; } ;
typedef int DWORD ;
typedef int BYTE ;
typedef TYPE_3__ AsnAny ;


 int FALSE ;
 int SnmpUtilAsnAnyCpy (TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static void setStringValue(AsnAny *value, BYTE type, DWORD len, BYTE *str)
{
    AsnAny strValue;

    strValue.asnType = type;
    strValue.asnValue.string.stream = str;
    strValue.asnValue.string.length = len;
    strValue.asnValue.string.dynamic = FALSE;
    SnmpUtilAsnAnyCpy(value, &strValue);
}
