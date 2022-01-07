
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WPARAM ;
typedef int RDebug ;
typedef int PVOID ;
typedef int HANDLE ;


 int GetHeapGlobalsOffset (int *,int ) ;
 int ReadProcessMemory (int ,int ,scalar_t__*,int,int *) ;
 scalar_t__ RtlpHpHeapGlobalsOffset ;
 scalar_t__ RtlpLFHKeyOffset ;
 int eprintf (char*) ;
 int r_return_val_if_fail (int *,int ) ;
 int r_sys_perror (char*) ;

__attribute__((used)) static bool GetLFHKey(RDebug *dbg, HANDLE h_proc, bool segment, WPARAM *lfhKey) {
 r_return_val_if_fail (dbg, 0);
 WPARAM lfhKeyLocation;

 if (!GetHeapGlobalsOffset (dbg, h_proc)) {
  *lfhKey = 0;
  return 0;
 }

 if (segment) {
  lfhKeyLocation = RtlpHpHeapGlobalsOffset + sizeof (WPARAM);
 } else {
  lfhKeyLocation = RtlpLFHKeyOffset;
 }
 if (!ReadProcessMemory (h_proc, (PVOID)lfhKeyLocation, lfhKey, sizeof (WPARAM), ((void*)0))) {
  r_sys_perror ("ReadProcessMemory");
  eprintf ("LFH key not found.\n");
  *lfhKey = 0;
  return 0;
 }
 return 1;
}
