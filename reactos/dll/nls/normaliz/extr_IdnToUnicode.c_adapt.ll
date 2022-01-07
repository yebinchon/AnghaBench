; ModuleID = '/home/carl/AnghaBench/reactos/dll/nls/normaliz/extr_IdnToUnicode.c_adapt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/nls/normaliz/extr_IdnToUnicode.c_adapt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DAMP = common dso_local global i32 0, align 4
@BASE = common dso_local global i32 0, align 4
@TMIN = common dso_local global i32 0, align 4
@TMAX = common dso_local global i32 0, align 4
@SKEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @adapt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapt(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @DAMP, align 4
  br label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 2, %12 ]
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %37, %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BASE, align 4
  %25 = load i32, i32* @TMIN, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* @TMAX, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  %30 = icmp sgt i32 %23, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i32, i32* @BASE, align 4
  %33 = load i32, i32* @TMIN, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @BASE, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %22

41:                                               ; preds = %22
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @BASE, align 4
  %44 = load i32, i32* @TMIN, align 4
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SKEW, align 4
  %51 = add nsw i32 %49, %50
  %52 = sdiv i32 %48, %51
  %53 = add nsw i32 %42, %52
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
