; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c__copy_from_rbsp.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c__copy_from_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_copy_from_rbsp(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @_find_emulated(i32* %14, i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %53

21:                                               ; preds = %13
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @memcpy(i32* %22, i32* %23, i64 %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %4, align 8
  br label %53

33:                                               ; preds = %21
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 3, i32* %36, align 4
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 %38
  store i32* %40, i32** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 %45
  store i32* %47, i32** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %10

51:                                               ; preds = %10
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %51, %29, %20
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i64 @_find_emulated(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
