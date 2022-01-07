; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_system.c_GetBIOSValue.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_system.c_GetBIOSValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i32] [i32 72, i32 97, i32 114, i32 100, i32 119, i32 97, i32 114, i32 101, i32 92, i32 68, i32 101, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 105, i32 111, i32 110, i32 92, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 92, i32 66, i32 73, i32 79, i32 83, i32 0], align 4
@REG_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i32, i32, i64)* @GetBIOSValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetBIOSValue(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i64, i64* %12, align 8
  %22 = call i64 @GetSMBiosStringW(i32 %18, i32 %19, i32 %20, i64 %21)
  store i64 %22, i64* %13, align 8
  br label %23

23:                                               ; preds = %17, %6
  %24 = load i64, i64* %13, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @REG_SZ, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i64 @GetRegValue(i32 %27, i8* bitcast ([33 x i32]* @.str to i8*), i32 %28, i32 %29, i32 %30, i32 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @wcslen(i32 %39)
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %38, %26
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i64, i64* %13, align 8
  ret i64 %43
}

declare dso_local i64 @GetSMBiosStringW(i32, i32, i32, i64) #1

declare dso_local i64 @GetRegValue(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @wcslen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
