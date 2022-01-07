; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_ary_rassoc.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-array-ext/src/extr_array.c_mrb_ary_rassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_rassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_rassoc(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @RARRAY_LEN(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = call i32* @RARRAY_PTR(i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @mrb_array_p(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @RARRAY_LEN(i32 %27)
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32* @RARRAY_PTR(i32 %32)
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @mrb_equal(i32* %31, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %47

41:                                               ; preds = %30, %26, %17
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %11

45:                                               ; preds = %11
  %46 = call i32 (...) @mrb_nil_value()
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i64 @mrb_array_p(i32) #1

declare dso_local i64 @mrb_equal(i32*, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
