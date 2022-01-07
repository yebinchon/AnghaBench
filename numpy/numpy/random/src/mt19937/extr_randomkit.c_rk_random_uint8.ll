; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_random_uint8.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_random_uint8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk_random_uint8(i64 %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
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
  br label %81

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
  store i64 0, i64* %13, align 8
  br label %46

46:                                               ; preds = %78, %33
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @rk_uint32(i32* %55)
  store i32 %56, i32* %14, align 4
  store i32 3, i32* %15, align 4
  br label %62

57:                                               ; preds = %51
  %58 = load i32, i32* %14, align 4
  %59 = ashr i32 %58, 8
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %12, align 8
  %66 = and i64 %64, %65
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %51, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %13, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %13, align 8
  br label %46

81:                                               ; preds = %32, %46
  ret void
}

declare dso_local i32 @rk_uint32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
