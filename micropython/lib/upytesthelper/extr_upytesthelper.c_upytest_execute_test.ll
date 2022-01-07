; ModuleID = '/home/carl/AnghaBench/micropython/lib/upytesthelper/extr_upytesthelper.c_upytest_execute_test.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/upytesthelper/extr_upytesthelper.c_upytest_execute_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@heap_start = common dso_local global i32 0, align 4
@heap_end = common dso_local global i32 0, align 4
@mp_sys_path = common dso_local global i32 0, align 4
@mp_sys_argv = common dso_local global i32 0, align 4
@MP_QSTR__lt_stdin_gt_ = common dso_local global i32 0, align 4
@MP_PARSE_FILE_INPUT = common dso_local global i32 0, align 4
@mp_type_SystemExit = common dso_local global i32 0, align 4
@mp_plat_print = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Uncaught exception\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upytest_execute_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @heap_start, align 4
  %10 = load i32, i32* @heap_end, align 4
  %11 = call i32 @gc_init(i32 %9, i32 %10)
  %12 = call i32 (...) @mp_init()
  %13 = load i32, i32* @mp_sys_path, align 4
  %14 = call i32 @mp_obj_list_init(i32 %13, i32 0)
  %15 = load i32, i32* @mp_sys_argv, align 4
  %16 = call i32 @mp_obj_list_init(i32 %15, i32 0)
  %17 = call i64 @nlr_push(%struct.TYPE_6__* %3)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load i32, i32* @MP_QSTR__lt_stdin_gt_, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call %struct.TYPE_7__* @mp_lexer_new_from_str_len(i32 %20, i8* %21, i32 %23, i32 0)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %4, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = load i32, i32* @MP_PARSE_FILE_INPUT, align 4
  %30 = call i32 @mp_parse(%struct.TYPE_7__* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mp_compile(i32* %6, i32 %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mp_call_function_0(i32 %33)
  %35 = call i32 (...) @nlr_pop()
  br label %49

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @mp_obj_get_type(i32 %39)
  %41 = call i64 @mp_obj_is_subclass_fast(i32 %40, i32* @mp_type_SystemExit)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 (...) @tinytest_set_test_skipped_()
  br label %55

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @mp_obj_print_exception(i32* @mp_plat_print, i32 %46)
  %48 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %19
  %50 = call i64 (...) @upytest_is_failed()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @tinytest_set_test_failed_()
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54, %43
  %56 = call i32 (...) @mp_deinit()
  ret void
}

declare dso_local i32 @gc_init(i32, i32) #1

declare dso_local i32 @mp_init(...) #1

declare dso_local i32 @mp_obj_list_init(i32, i32) #1

declare dso_local i64 @nlr_push(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @mp_lexer_new_from_str_len(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mp_parse(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mp_compile(i32*, i32, i32) #1

declare dso_local i32 @mp_call_function_0(i32) #1

declare dso_local i32 @nlr_pop(...) #1

declare dso_local i64 @mp_obj_is_subclass_fast(i32, i32*) #1

declare dso_local i32 @mp_obj_get_type(i32) #1

declare dso_local i32 @tinytest_set_test_skipped_(...) #1

declare dso_local i32 @mp_obj_print_exception(i32*, i32) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i64 @upytest_is_failed(...) #1

declare dso_local i32 @tinytest_set_test_failed_(...) #1

declare dso_local i32 @mp_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
