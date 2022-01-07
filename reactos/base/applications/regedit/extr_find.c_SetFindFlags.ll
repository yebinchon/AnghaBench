; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_SetFindFlags.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_SetFindFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@g_szGeneralRegKey = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@s_szFindFlags = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@s_szFindFlagsR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @SetFindFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetFindFlags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %7 = load i32, i32* @g_szGeneralRegKey, align 4
  %8 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %9 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %10 = call i64 @RegCreateKeyExW(i32 %6, i32 %7, i32 0, i32* null, i32 %8, i32 %9, i32* null, i32* %3, i32* %4)
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 0
  %16 = and i32 %15, 65535
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @s_szFindFlags, align 4
  %19 = load i32, i32* @REG_DWORD, align 4
  %20 = call i32 @RegSetValueExW(i32 %17, i32 %18, i32 0, i32 %19, i32* %5, i32 4)
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 65535
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @s_szFindFlagsR, align 4
  %26 = load i32, i32* @REG_DWORD, align 4
  %27 = call i32 @RegSetValueExW(i32 %24, i32 %25, i32 0, i32 %26, i32* %5, i32 4)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @RegCloseKey(i32 %28)
  br label %30

30:                                               ; preds = %13, %1
  ret void
}

declare dso_local i64 @RegCreateKeyExW(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
