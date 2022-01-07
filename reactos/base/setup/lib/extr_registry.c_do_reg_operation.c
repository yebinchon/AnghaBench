
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char WCHAR ;
typedef int ULONG ;
typedef unsigned char* PWCHAR ;
typedef int PVOID ;
typedef scalar_t__ PUNICODE_STRING ;
typedef unsigned char* PUCHAR ;
typedef int PINFCONTEXT ;
typedef int HANDLE ;
typedef int BOOLEAN ;
typedef int BOOL ;


 int DPRINT (char*,scalar_t__,...) ;
 int DPRINT1 (char*,scalar_t__) ;
 int FALSE ;
 int FLG_ADDREG_APPEND ;
 int FLG_ADDREG_BINVALUETYPE ;
 int FLG_ADDREG_DELVAL ;
 int FLG_ADDREG_KEYONLY ;
 int FLG_ADDREG_NOCLOBBER ;
 int FLG_ADDREG_OVERWRITEONLY ;



 int FLG_ADDREG_TYPE_MASK ;



 int NtSetValueKey (int ,scalar_t__,int ,int,int ,int) ;
 int ProcessHeap ;
 int REG_BINARY ;
 int REG_DWORD ;
 int REG_EXPAND_SZ ;
 int REG_MULTI_SZ ;
 int REG_NONE ;
 int REG_SZ ;
 int RegDeleteKeyW (int ,int *) ;
 int RegDeleteValueW (int ,scalar_t__) ;
 int RegQueryValueExW (int ,scalar_t__,int *,int *,int *,int *) ;
 scalar_t__ RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,unsigned char*) ;
 int SpInfGetBinaryField (int ,int,unsigned char*,int,int*) ;
 int SpInfGetFieldCount (int ) ;
 int SpInfGetMultiSzField (int ,int,unsigned char*,int,int*) ;
 int SpInfGetStringField (int ,int,unsigned char*,int,int*) ;
 int TRUE ;
 int flags ;
 int hkey ;
 int wcstoul (unsigned char*,int *,int ) ;

__attribute__((used)) static BOOLEAN
do_reg_operation(HANDLE KeyHandle,
                 PUNICODE_STRING ValueName,
                 PINFCONTEXT Context,
                 ULONG Flags)
{
  WCHAR EmptyStr = 0;
  ULONG Type;
  ULONG Size;

  if (Flags & FLG_ADDREG_DELVAL)
    {
      return TRUE;
    }

  if (Flags & FLG_ADDREG_KEYONLY)
    return TRUE;
  switch (Flags & FLG_ADDREG_TYPE_MASK)
    {
      case 128:
        Type = REG_SZ;
        break;

      case 130:
        Type = REG_MULTI_SZ;
        break;

      case 131:
        Type = REG_EXPAND_SZ;
        break;

      case 133:
        Type = REG_BINARY;
        break;

      case 132:
        Type = REG_DWORD;
        break;

      case 129:
        Type = REG_NONE;
        break;

      default:
        Type = Flags >> 16;
        break;
    }

  if (!(Flags & FLG_ADDREG_BINVALUETYPE) ||
      (Type == REG_DWORD && SpInfGetFieldCount(Context) == 5))
    {
      PWCHAR Str = ((void*)0);

      if (Type == REG_MULTI_SZ)
        {
          if (!SpInfGetMultiSzField(Context, 5, ((void*)0), 0, &Size))
            Size = 0;

          if (Size)
            {
              Str = (WCHAR*) RtlAllocateHeap(ProcessHeap, 0, Size * sizeof(WCHAR));
              if (Str == ((void*)0))
                return FALSE;

              SpInfGetMultiSzField(Context, 5, Str, Size, ((void*)0));
            }

          if (Flags & FLG_ADDREG_APPEND)
            {
              if (Str == ((void*)0))
                return TRUE;

              DPRINT1("append_multi_sz_value '%S' commented out, WHY??\n", ValueName);


              RtlFreeHeap (ProcessHeap, 0, Str);
              return TRUE;
            }

        }
      else
        {
          if (!SpInfGetStringField(Context, 5, ((void*)0), 0, &Size))
            Size = 0;

          if (Size)
            {
              Str = (WCHAR*)RtlAllocateHeap(ProcessHeap, 0, Size * sizeof(WCHAR));
              if (Str == ((void*)0))
                return FALSE;

              SpInfGetStringField(Context, 5, Str, Size, ((void*)0));
            }
        }

      if (Type == REG_DWORD)
        {
          ULONG dw = Str ? wcstoul (Str, ((void*)0), 0) : 0;

          DPRINT("setting dword %wZ to %lx\n", ValueName, dw);

          NtSetValueKey (KeyHandle,
                         ValueName,
                         0,
                         Type,
                         (PVOID)&dw,
                         sizeof(ULONG));
        }
      else
        {
          DPRINT("setting value %wZ to %S\n", ValueName, Str);

          if (Str)
            {
              NtSetValueKey (KeyHandle,
                             ValueName,
                             0,
                             Type,
                             (PVOID)Str,
                             Size * sizeof(WCHAR));
            }
          else
            {
              NtSetValueKey (KeyHandle,
                             ValueName,
                             0,
                             Type,
                             (PVOID)&EmptyStr,
                             sizeof(WCHAR));
            }
        }
      RtlFreeHeap (ProcessHeap, 0, Str);
    }
  else
    {
      PUCHAR Data = ((void*)0);

      if (!SpInfGetBinaryField(Context, 5, ((void*)0), 0, &Size))
        Size = 0;

      if (Size)
        {
          Data = (unsigned char*) RtlAllocateHeap(ProcessHeap, 0, Size);
          if (Data == ((void*)0))
            return FALSE;

          DPRINT("setting binary data %wZ len %lu\n", ValueName, Size);
          SpInfGetBinaryField(Context, 5, Data, Size, ((void*)0));
        }

      NtSetValueKey (KeyHandle,
                     ValueName,
                     0,
                     Type,
                     (PVOID)Data,
                     Size);

      RtlFreeHeap (ProcessHeap, 0, Data);
    }

  return TRUE;
}
