; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_numeric.c_lshift.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_numeric.c_lshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITY = common dso_local global i32 0, align 4
@NUMERIC_SHIFT_WIDTH_MAX = common dso_local global i32 0, align 4
@MRB_INT_MAX = common dso_local global i32 0, align 4
@MRB_INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @lshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lshift(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @INFINITY, align 4
  %14 = call i32 @mrb_float_value(i32* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  br label %64

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NUMERIC_SHIFT_WIDTH_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MRB_INT_MAX, align 4
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %24, %25
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %18
  br label %51

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @mrb_fixnum_value(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %15
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @NUMERIC_SHIFT_WIDTH_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MRB_INT_MIN, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %40, %41
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %34
  br label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 1, %47
  %49 = mul nsw i32 %46, %48
  %50 = call i32 @mrb_fixnum_value(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %64

51:                                               ; preds = %44, %28
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %57, %51
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %8, align 4
  br label %53

60:                                               ; preds = %53
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @mrb_float_value(i32* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %45, %29, %11
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @mrb_float_value(i32*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
