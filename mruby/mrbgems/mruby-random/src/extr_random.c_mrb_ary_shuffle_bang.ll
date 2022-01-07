; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_ary_shuffle_bang.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-random/src/extr_random.c_mrb_ary_shuffle_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"|o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ary_shuffle_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ary_shuffle_bang(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32 (...) @mrb_nil_value()
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @RARRAY_LEN(i32 %13)
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %73

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @mrb_get_args(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %7)
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @mrb_nil_p(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @random_default_state(i32* %23)
  store i32* %24, i32** %8, align 8
  br label %31

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @random_check(i32* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32* @random_ptr(i32 %29)
  store i32* %30, i32** %8, align 8
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @mrb_ary_ptr(i32 %33)
  %35 = call i32 @mrb_ary_modify(i32* %32, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @RARRAY_LEN(i32 %36)
  %38 = call i32 @mrb_fixnum_value(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @RARRAY_LEN(i32 %39)
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %69, %31
  %44 = load i64, i64* %5, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = call i32* @RARRAY_PTR(i32 %47)
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @random_rand(i32* %49, i32* %50, i32 %51)
  %53 = call i64 @mrb_fixnum(i32 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %46
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %5, align 8
  br label %43

72:                                               ; preds = %43
  br label %73

73:                                               ; preds = %72, %2
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32* @random_default_state(i32*) #1

declare dso_local i32 @random_check(i32*, i32) #1

declare dso_local i32* @random_ptr(i32) #1

declare dso_local i32 @mrb_ary_modify(i32*, i32) #1

declare dso_local i32 @mrb_ary_ptr(i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @random_rand(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
