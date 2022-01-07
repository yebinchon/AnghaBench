; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_error.c_set_backtrace.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_error.c_set_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"backtrace must be Array of String\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"backtrace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @set_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_backtrace(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @mrb_array_p(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @E_TYPE_ERROR, align 4
  %16 = call i32 @mrb_raise(i32* %14, i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32* @RARRAY_PTR(i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @RARRAY_LEN(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %8, align 8
  br label %25

25:                                               ; preds = %35, %17
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ult i32* %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mrb_string_p(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %13

35:                                               ; preds = %29
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @mrb_intern_lit(i32* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mrb_iv_set(i32* %40, i32 %41, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @mrb_array_p(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_string_p(i32) #1

declare dso_local i32 @mrb_iv_set(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
