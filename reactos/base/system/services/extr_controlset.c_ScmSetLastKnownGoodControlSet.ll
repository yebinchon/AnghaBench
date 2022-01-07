; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmSetLastKnownGoodControlSet.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmSetLastKnownGoodControlSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 83, i32 101, i32 108, i32 101, i32 99, i32 116, i32 0], align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i32] [i32 76, i32 97, i32 115, i32 116, i32 75, i32 110, i32 111, i32 119, i32 110, i32 71, i32 111, i32 111, i32 100, i32 0], align 4
@REG_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @ScmSetLastKnownGoodControlSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ScmSetLastKnownGoodControlSet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %7 = load i32, i32* @KEY_WRITE, align 4
  %8 = call i64 @RegOpenKeyExW(i32 %6, i8* bitcast ([14 x i32]* @.str to i8*), i32 0, i32 %7, i32* %4)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @ERROR_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %2, align 8
  br label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @REG_DWORD, align 4
  %17 = ptrtoint i64* %3 to i32
  %18 = call i64 @RegSetValueExW(i32 %15, i8* bitcast ([14 x i32]* @.str.1 to i8*), i32 0, i32 %16, i32 %17, i32 8)
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @RegFlushKey(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @RegCloseKey(i32 %21)
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %14, %12
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegSetValueExW(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @RegFlushKey(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
