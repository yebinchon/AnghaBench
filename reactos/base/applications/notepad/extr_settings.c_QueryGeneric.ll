; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_settings.c_QueryGeneric.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_settings.c_QueryGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32, i64)* @QueryGeneric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueryGeneric(i32 %0, i32 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = call i32* @_alloca(i64 %15)
  store i32* %16, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @ZeroMemory(i32* %17, i64 %18)
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %14, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i64 @RegQueryValueEx(i32 %21, i32 %22, i32* null, i64* %12, i32 %24, i64* %13)
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %6, align 4
  br label %42

30:                                               ; preds = %5
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i32 @memcpy(i32 %37, i32* %38, i64 %39)
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %34, %28
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32* @_alloca(i64) #1

declare dso_local i32 @ZeroMemory(i32*, i64) #1

declare dso_local i64 @RegQueryValueEx(i32, i32, i32*, i64*, i32, i64*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
