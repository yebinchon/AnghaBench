; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_random_uint32.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_random_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk_random_uint32(i32 %0, i32 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %27, %17
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %13, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %22
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %13, align 8
  br label %18

30:                                               ; preds = %18
  br label %75

31:                                               ; preds = %5
  %32 = load i32, i32* %12, align 4
  %33 = ashr i32 %32, 1
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %36, 2
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = ashr i32 %40, 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = ashr i32 %44, 8
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = ashr i32 %48, 16
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %52

52:                                               ; preds = %72, %31
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %64, %56
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @rk_uint32(i32* %58)
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %57

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32*, i32** %9, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %65
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %13, align 8
  br label %52

75:                                               ; preds = %30, %52
  ret void
}

declare dso_local i32 @rk_uint32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
