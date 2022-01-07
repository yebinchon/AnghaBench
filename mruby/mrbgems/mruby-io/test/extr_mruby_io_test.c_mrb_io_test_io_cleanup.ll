; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/test/extr_mruby_io_test.c_mrb_io_test_io_cleanup.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/test/extr_mruby_io_test.c_mrb_io_test_io_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"$mrbtest_io_rfname\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"$mrbtest_io_wfname\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"$mrbtest_io_symlinkname\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"$mrbtest_io_socketname\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"$mrbtest_io_msg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_io_test_io_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_io_test_io_cleanup(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @mrb_intern_cstr(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @mrb_gv_get(i32* %9, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_intern_cstr(i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @mrb_gv_get(i32* %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @mrb_intern_cstr(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @mrb_gv_get(i32* %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_intern_cstr(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @mrb_gv_get(i32* %21, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @mrb_string_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @RSTRING_PTR(i32 %29)
  %31 = call i32 @remove(i32 %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @mrb_string_p(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @RSTRING_PTR(i32 %37)
  %39 = call i32 @remove(i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @mrb_string_p(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @RSTRING_PTR(i32 %45)
  %47 = call i32 @remove(i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @mrb_string_p(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @RSTRING_PTR(i32 %53)
  %55 = call i32 @remove(i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @mrb_intern_cstr(i32* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 (...) @mrb_nil_value()
  %61 = call i32 @mrb_gv_set(i32* %57, i32 %59, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @mrb_intern_cstr(i32* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 (...) @mrb_nil_value()
  %66 = call i32 @mrb_gv_set(i32* %62, i32 %64, i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @mrb_intern_cstr(i32* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %70 = call i32 (...) @mrb_nil_value()
  %71 = call i32 @mrb_gv_set(i32* %67, i32 %69, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @mrb_intern_cstr(i32* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32 (...) @mrb_nil_value()
  %76 = call i32 @mrb_gv_set(i32* %72, i32 %74, i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @mrb_intern_cstr(i32* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %80 = call i32 (...) @mrb_nil_value()
  %81 = call i32 @mrb_gv_set(i32* %77, i32 %79, i32 %80)
  %82 = call i32 (...) @mrb_nil_value()
  ret i32 %82
}

declare dso_local i32 @mrb_gv_get(i32*, i32) #1

declare dso_local i32 @mrb_intern_cstr(i32*, i8*) #1

declare dso_local i64 @mrb_string_p(i32) #1

declare dso_local i32 @remove(i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_gv_set(i32*, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
