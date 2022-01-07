; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__get_size.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAX_INTP = common dso_local global i64 0, align 8
@NPY_MIN_INTP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_size(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @NumPyOS_strtoll(i8* %6, i8** %4, i32 10)
  store i64 %7, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @_is_alpha_underscore(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  store i32 -1, i32* %2, align 4
  br label %29

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @NPY_MAX_INTP, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @NPY_MIN_INTP, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 -1, i32* %2, align 4
  br label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %25, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @NumPyOS_strtoll(i8*, i8**, i32) #1

declare dso_local i64 @_is_alpha_underscore(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
