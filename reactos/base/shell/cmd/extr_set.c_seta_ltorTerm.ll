; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_ltorTerm.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_ltorTerm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i32*, i64*, i32 (i64**, i32*)*)* @seta_ltorTerm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seta_ltorTerm(i64** %0, i32* %1, i64* %2, i32 (i64**, i32*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32 (i64**, i32*)*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 (i64**, i32*)* %3, i32 (i64**, i32*)** %9, align 8
  %14 = load i64**, i64*** %6, align 8
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %10, align 8
  %16 = load i32 (i64**, i32*)*, i32 (i64**, i32*)** %9, align 8
  %17 = call i32 %16(i64** %10, i32* %11)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %59

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %52, %21
  %23 = load i64*, i64** %10, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64*, i64** %8, align 8
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @_tcschr(i64* %27, i64 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ false, %22 ], [ %31, %26 ]
  br i1 %33, label %34, label %53

34:                                               ; preds = %32
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = call i64* @skip_ws(i64* %38)
  store i64* %39, i64** %10, align 8
  %40 = load i32 (i64**, i32*)*, i32 (i64**, i32*)** %9, align 8
  %41 = call i32 %40(i64** %10, i32* %12)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %59

45:                                               ; preds = %34
  %46 = load i64, i64* %13, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @calc(i32* %11, i64 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %5, align 4
  br label %59

52:                                               ; preds = %45
  br label %22

53:                                               ; preds = %32
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i64*, i64** %10, align 8
  %57 = load i64**, i64*** %6, align 8
  store i64* %56, i64** %57, align 8
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %53, %50, %43, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @_tcschr(i64*, i64) #1

declare dso_local i64* @skip_ws(i64*) #1

declare dso_local i32 @calc(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
