; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_wstrcmpi_n.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_wstrcmpi_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wstrblank = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wstrcmpi_n(i64* %0, i64* %1, i64 %2) #0 {
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
  br label %61

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

24:                                               ; preds = %58, %23
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @towupper(i64 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @towupper(i64 %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %61

37:                                               ; preds = %24
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %61

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %5, align 8
  %47 = load i64, i64* %45, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %6, align 8
  %52 = load i64, i64* %50, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %54, %49, %44
  %59 = phi i1 [ false, %49 ], [ false, %44 ], [ %57, %54 ]
  br i1 %59, label %24, label %60

60:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %41, %36, %12
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @towupper(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
