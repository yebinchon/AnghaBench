; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_random_uint16.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_random_uint16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk_random_uint16(i64 %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %20

20:                                               ; preds = %29, %19
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %13, align 8
  br label %20

32:                                               ; preds = %20
  br label %85

33:                                               ; preds = %5
  %34 = load i64, i64* %12, align 8
  %35 = ashr i64 %34, 1
  %36 = load i64, i64* %12, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = ashr i64 %38, 2
  %40 = load i64, i64* %12, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = ashr i64 %42, 4
  %44 = load i64, i64* %12, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = ashr i64 %46, 8
  %48 = load i64, i64* %12, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %50

50:                                               ; preds = %82, %33
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @rk_uint32(i32* %59)
  store i32 %60, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %66

61:                                               ; preds = %55
  %62 = load i32, i32* %14, align 4
  %63 = ashr i32 %62, 16
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %12, align 8
  %70 = and i64 %68, %69
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %55, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64*, i64** %9, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %75
  %83 = load i64, i64* %13, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %13, align 8
  br label %50

85:                                               ; preds = %32, %50
  ret void
}

declare dso_local i32 @rk_uint32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
