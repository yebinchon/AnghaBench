; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_if.c_GenericCmp.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_if.c_GenericCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64 (i32, i32)*, i32, i32)* @GenericCmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GenericCmp(i64 (i32, i32)* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64 (i32, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 (i32, i32)* %0, i64 (i32, i32)** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @_tcstol(i32 %11, i64** %8, i32 0)
  store i64 %12, i64* %9, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @_T(i8 signext 0)
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @_tcstol(i32 %18, i64** %8, i32 0)
  store i64 %19, i64* %10, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @_T(i8 signext 0)
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %34

29:                                               ; preds = %24
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp sgt i64 %30, %31
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i32 [ -1, %28 ], [ %33, %29 ]
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %4, align 8
  br label %43

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i64 (i32, i32)*, i64 (i32, i32)** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 %39(i32 %40, i32 %41)
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @_tcstol(i32, i64**, i32) #1

declare dso_local i64 @_T(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
