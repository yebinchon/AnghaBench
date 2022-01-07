
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PCONSOLE_STATE_INFO ;


 int ConCfgGetDefaultSettings (int ) ;

__attribute__((used)) static VOID
InitDefaultConsoleInfo(PCONSOLE_STATE_INFO pConInfo)
{

    ConCfgGetDefaultSettings(pConInfo);
}
