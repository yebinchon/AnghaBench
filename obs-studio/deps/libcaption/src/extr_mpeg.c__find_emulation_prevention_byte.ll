; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c__find_emulation_prevention_byte.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c__find_emulation_prevention_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @_find_emulation_prevention_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_find_emulation_prevention_byte(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 2, i64* %6, align 8
  br label %7

7:                                                ; preds = %54, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %7
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 0, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %6, align 8
  br label %54

20:                                               ; preds = %11
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 3, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %6, align 8
  br label %53

29:                                               ; preds = %20
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 0, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 2
  store i64 %38, i64* %6, align 8
  br label %52

39:                                               ; preds = %29
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, 2
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 0, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %51

49:                                               ; preds = %39
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %3, align 8
  br label %57

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53, %17
  br label %7

55:                                               ; preds = %7
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
