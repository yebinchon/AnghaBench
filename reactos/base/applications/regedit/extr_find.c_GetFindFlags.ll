; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_GetFindFlags.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_GetFindFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSF_LOOKATKEYS = common dso_local global i64 0, align 8
@RSF_LOOKATVALUES = common dso_local global i64 0, align 8
@RSF_LOOKATDATA = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@g_szGeneralRegKey = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@s_szFindFlags = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i64 0, align 8
@s_szFindFlagsR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @GetFindFlags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetFindFlags() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i64, i64* @RSF_LOOKATKEYS, align 8
  %7 = load i64, i64* @RSF_LOOKATVALUES, align 8
  %8 = or i64 %6, %7
  %9 = load i64, i64* @RSF_LOOKATDATA, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %12 = load i32, i32* @g_szGeneralRegKey, align 4
  %13 = call i64 @RegOpenKeyW(i32 %11, i32 %12, i32* %1)
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %0
  store i64 8, i64* %4, align 8
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @s_szFindFlags, align 4
  %19 = ptrtoint i64* %3 to i32
  %20 = call i64 @RegQueryValueExW(i32 %17, i32 %18, i32* null, i64* %2, i32 %19, i64* %4)
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @REG_DWORD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, -65536
  %30 = load i64, i64* %3, align 8
  %31 = and i64 %30, 65535
  %32 = shl i64 %31, 0
  %33 = or i64 %29, %32
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %27, %23
  br label %35

35:                                               ; preds = %34, %16
  store i64 8, i64* %4, align 8
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @s_szFindFlagsR, align 4
  %38 = ptrtoint i64* %3 to i32
  %39 = call i64 @RegQueryValueExW(i32 %36, i32 %37, i32* null, i64* %2, i32 %38, i64* %4)
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @REG_DWORD, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = and i64 %47, 65535
  %49 = load i64, i64* %3, align 8
  %50 = and i64 %49, 65535
  %51 = shl i64 %50, 16
  %52 = or i64 %48, %51
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %46, %42
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @RegCloseKey(i32 %55)
  br label %57

57:                                               ; preds = %54, %0
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local i64 @RegOpenKeyW(i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i64*, i32, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
