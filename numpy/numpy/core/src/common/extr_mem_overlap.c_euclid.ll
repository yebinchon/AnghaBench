; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_mem_overlap.c_euclid.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_mem_overlap.c_euclid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32*)* @euclid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @euclid(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %24

24:                                               ; preds = %5, %82
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %53

46:                                               ; preds = %24
  %47 = load i32, i32* %6, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  br label %83

53:                                               ; preds = %27
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %13, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %14, align 4
  br label %82

75:                                               ; preds = %53
  %76 = load i32, i32* %7, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  br label %83

82:                                               ; preds = %56
  br label %24

83:                                               ; preds = %75, %46
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
