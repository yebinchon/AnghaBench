; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_fill.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk_fill(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i64, i64* %5, align 8
  %12 = icmp uge i64 %11, 4
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @rk_random(i32* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = and i64 %16, 255
  %18 = trunc i64 %17 to i8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %8, align 8
  store i8 %18, i8* %19, align 1
  %21 = load i64, i64* %7, align 8
  %22 = lshr i64 %21, 8
  %23 = and i64 %22, 255
  %24 = trunc i64 %23 to i8
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  store i8 %24, i8* %25, align 1
  %27 = load i64, i64* %7, align 8
  %28 = lshr i64 %27, 16
  %29 = and i64 %28, 255
  %30 = trunc i64 %29 to i8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  store i8 %30, i8* %31, align 1
  %33 = load i64, i64* %7, align 8
  %34 = lshr i64 %33, 24
  %35 = and i64 %34, 255
  %36 = trunc i64 %35 to i8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %8, align 8
  store i8 %36, i8* %37, align 1
  br label %39

39:                                               ; preds = %13
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %40, 4
  store i64 %41, i64* %5, align 8
  br label %10

42:                                               ; preds = %10
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %63

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @rk_random(i32* %47)
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %58, %46
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = and i64 %53, 255
  %55 = trunc i64 %54 to i8
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  store i8 %55, i8* %56, align 1
  br label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  %60 = lshr i64 %59, 8
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %5, align 8
  br label %49

63:                                               ; preds = %45, %49
  ret void
}

declare dso_local i64 @rk_random(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
