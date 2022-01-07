; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_GetMultiByteStringN.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_GetMultiByteStringN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i64*)* @GetMultiByteStringN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetMultiByteStringN(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load i32, i32* @CP_ACP, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @WideCharToMultiByte(i32 %12, i32 0, i32* %13, i32 %14, i8* null, i64 0, i32* null, i32* null)
  %16 = load i64*, i64** %7, align 8
  store i64 %15, i64* %16, align 8
  %17 = call i32 (...) @GetProcessHeap()
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @HeapAlloc(i32 %17, i32 0, i64 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @CHECK_ENOUGH_MEMORY(i8* %21)
  %23 = load i32, i32* @CP_ACP, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @WideCharToMultiByte(i32 %23, i32 0, i32* %24, i32 %25, i8* %26, i64 %28, i32* null, i32* null)
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %4, align 8
  br label %33

31:                                               ; preds = %3
  %32 = load i64*, i64** %7, align 8
  store i64 0, i64* %32, align 8
  store i8* null, i8** %4, align 8
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i8*, i8** %4, align 8
  ret i8* %34
}

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i64, i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CHECK_ENOUGH_MEMORY(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
