; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_driver.c_main.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_driver.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid mrb_state, exiting test driver\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"verbose mode: enable\0A\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@mrbtest_assert_irep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 (...) @print_hint()
  %11 = call i32* (...) @mrb_open()
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 118
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %29, %21, %18
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mrb_init_test_driver(i32* %41, i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @mrbtest_assert_irep, align 4
  %46 = call i32 @mrb_load_irep(i32* %44, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @mrbgemtest_init(i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @eval_test(i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @mrb_close(i32* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %40, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @print_hint(...) #1

declare dso_local i32* @mrb_open(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mrb_init_test_driver(i32*, i32) #1

declare dso_local i32 @mrb_load_irep(i32*, i32) #1

declare dso_local i32 @mrbgemtest_init(i32*) #1

declare dso_local i32 @eval_test(i32*) #1

declare dso_local i32 @mrb_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
