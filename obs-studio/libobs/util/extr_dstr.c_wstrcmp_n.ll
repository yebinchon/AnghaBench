; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_wstrcmp_n.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_wstrcmp_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wstrblank = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wstrcmp_n(i64* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i64*, i64** @wstrblank, align 8
  store i64* %17, i64** %5, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i64*, i64** %6, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i64*, i64** @wstrblank, align 8
  store i64* %22, i64** %6, align 8
  br label %23

23:                                               ; preds = %21, %18
  br label %24

24:                                               ; preds = %54, %23
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %57

33:                                               ; preds = %24
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %57

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  %41 = load i64*, i64** %5, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %5, align 8
  %43 = load i64, i64* %41, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %6, align 8
  %48 = load i64, i64* %46, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %50, %45, %40
  %55 = phi i1 [ false, %45 ], [ false, %40 ], [ %53, %50 ]
  br i1 %55, label %24, label %56

56:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %37, %32, %12
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
