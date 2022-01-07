; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_for.c_GetNextElement.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_for.c_GetNextElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i64**)* @GetNextElement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetNextElement(i64** %0, i64** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64**, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i64** %0, i64*** %4, align 8
  store i64** %1, i64*** %5, align 8
  %8 = load i64**, i64*** %5, align 8
  %9 = load i64*, i64** %8, align 8
  store i64* %9, i64** %6, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @_istspace(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %18, i64** %6, align 8
  br label %11

19:                                               ; preds = %11
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %58

25:                                               ; preds = %19
  %26 = load i64*, i64** %6, align 8
  %27 = load i64**, i64*** %4, align 8
  store i64* %26, i64** %27, align 8
  br label %28

28:                                               ; preds = %45, %25
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @_istspace(i64 %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i1 [ true, %32 ], [ %40, %35 ]
  br label %43

43:                                               ; preds = %41, %28
  %44 = phi i1 [ false, %28 ], [ %42, %41 ]
  br i1 %44, label %45, label %54

45:                                               ; preds = %43
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %6, align 8
  %48 = load i64, i64* %46, align 8
  %49 = call i64 @_T(i8 signext 34)
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = xor i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %28

54:                                               ; preds = %43
  %55 = load i64*, i64** %6, align 8
  %56 = load i64**, i64*** %5, align 8
  store i64* %55, i64** %56, align 8
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @_istspace(i64) #1

declare dso_local i64 @_T(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
