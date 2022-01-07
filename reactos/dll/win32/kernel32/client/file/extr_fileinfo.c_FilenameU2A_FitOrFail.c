
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_4__ {scalar_t__ Length; scalar_t__ MaximumLength; scalar_t__ Buffer; } ;
typedef int PUNICODE_STRING ;
typedef scalar_t__ LPSTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ ANSI_STRING ;


 int FALSE ;
 scalar_t__ MAX_PATH ;
 scalar_t__ RtlUnicodeStringToAnsiSize (int ) ;
 int RtlUnicodeStringToAnsiString (TYPE_1__*,int ,int ) ;
 scalar_t__ RtlUnicodeStringToOemSize (int ) ;
 int RtlUnicodeStringToOemString (TYPE_1__*,int ,int ) ;
 scalar_t__ bIsFileApiAnsi ;

DWORD
FilenameU2A_FitOrFail(
   LPSTR DestA,
   INT destLen,
   PUNICODE_STRING SourceU
   )
{
   DWORD ret;


   if (destLen > MAX_PATH) destLen = MAX_PATH;

   ret = bIsFileApiAnsi? RtlUnicodeStringToAnsiSize(SourceU) : RtlUnicodeStringToOemSize(SourceU);


   if (DestA && (INT)ret <= destLen)
   {
      ANSI_STRING str;

      str.Buffer = DestA;
      str.MaximumLength = (USHORT)destLen;


      if (bIsFileApiAnsi)
         RtlUnicodeStringToAnsiString(&str, SourceU, FALSE );
      else
         RtlUnicodeStringToOemString(&str, SourceU, FALSE );

      ret = str.Length;
   }

   return ret;
}
