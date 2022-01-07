; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_mt19937-jump.c_horner1.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_mt19937-jump.c_horner1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEXP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @horner1(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @MEXP, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = call i64 @calloc(i32 1, i32 4)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i64*, i64** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @get_coef(i64* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %5, align 4
  br label %11

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @copy_state(i32* %23, i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @gen_next(i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %46, %22
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i64*, i64** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @get_coef(i64* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @add_state(i32* %39, i32* %40)
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @gen_next(i32* %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load i64*, i64** %3, align 8
  %51 = call i64 @get_coef(i64* %50, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @add_state(i32* %54, i32* %55)
  br label %58

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %53
  br label %68

59:                                               ; preds = %19
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @copy_state(i32* %63, i32* %64)
  br label %67

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %62
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @copy_state(i32* %69, i32* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @free(i32* %72)
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @get_coef(i64*, i32) #1

declare dso_local i32 @copy_state(i32*, i32*) #1

declare dso_local i32 @gen_next(i32*) #1

declare dso_local i32 @add_state(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
