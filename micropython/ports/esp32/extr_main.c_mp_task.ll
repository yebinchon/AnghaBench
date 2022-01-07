; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp32/extr_main.c_mp_task.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp32/extr_main.c_mp_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MALLOC_CAP_8BIT = common dso_local global i32 0, align 4
@MP_TASK_STACK_SIZE = common dso_local global i64 0, align 8
@mp_sys_path = common dso_local global i32 0, align 4
@MP_QSTR_ = common dso_local global i32 0, align 4
@MP_QSTR__slash_lib = common dso_local global i32 0, align 4
@mp_sys_argv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"_boot.py\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"boot.py\00", align 1
@pyexec_mode_kind = common dso_local global i64 0, align 8
@PYEXEC_MODE_FRIENDLY_REPL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"main.py\00", align 1
@PYEXEC_MODE_RAW_REPL = common dso_local global i64 0, align 8
@vprintf_null = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"MPY: soft reboot\0D\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@MP_TASK_STACK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32 (...) @get_sp()
  %8 = sext i32 %7 to i64
  store volatile i64 %8, i64* %3, align 8
  %9 = call i32 (...) @uart_init()
  %10 = load i32, i32* @MALLOC_CAP_8BIT, align 4
  %11 = call i64 @heap_caps_get_largest_free_block(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %68, %1
  %15 = load volatile i64, i64* %3, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @mp_stack_set_top(i8* %16)
  %18 = load i64, i64* @MP_TASK_STACK_SIZE, align 8
  %19 = sub nsw i64 %18, 1024
  %20 = call i32 @mp_stack_set_limit(i64 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr i8, i8* %22, i64 %23
  %25 = call i32 @gc_init(i8* %21, i8* %24)
  %26 = call i32 (...) @mp_init()
  %27 = load i32, i32* @mp_sys_path, align 4
  %28 = call i32 @mp_obj_list_init(i32 %27, i32 0)
  %29 = load i32, i32* @mp_sys_path, align 4
  %30 = load i32, i32* @MP_QSTR_, align 4
  %31 = call i32 @MP_OBJ_NEW_QSTR(i32 %30)
  %32 = call i32 @mp_obj_list_append(i32 %29, i32 %31)
  %33 = load i32, i32* @mp_sys_path, align 4
  %34 = load i32, i32* @MP_QSTR__slash_lib, align 4
  %35 = call i32 @MP_OBJ_NEW_QSTR(i32 %34)
  %36 = call i32 @mp_obj_list_append(i32 %33, i32 %35)
  %37 = load i32, i32* @mp_sys_argv, align 4
  %38 = call i32 @mp_obj_list_init(i32 %37, i32 0)
  %39 = call i32 (...) @readline_init0()
  %40 = call i32 (...) @machine_pins_init()
  %41 = call i32 @pyexec_frozen_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @pyexec_file_if_exists(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i64, i64* @pyexec_mode_kind, align 8
  %44 = load i64, i64* @PYEXEC_MODE_FRIENDLY_REPL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %14
  %47 = call i32 @pyexec_file_if_exists(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %14
  br label %49

49:                                               ; preds = %67, %48
  %50 = load i64, i64* @pyexec_mode_kind, align 8
  %51 = load i64, i64* @PYEXEC_MODE_RAW_REPL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32, i32* @vprintf_null, align 4
  %55 = call i32 @esp_log_set_vprintf(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = call i64 (...) @pyexec_raw_repl()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %68

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @esp_log_set_vprintf(i32 %60)
  br label %67

62:                                               ; preds = %49
  %63 = call i64 (...) @pyexec_friendly_repl()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %68

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %59
  br label %49

68:                                               ; preds = %65, %58
  %69 = call i32 (...) @machine_timer_deinit_all()
  %70 = call i32 (...) @gc_sweep_all()
  %71 = call i32 @mp_hal_stdout_tx_str(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 (...) @machine_pins_deinit()
  %73 = call i32 (...) @usocket_events_deinit()
  %74 = call i32 (...) @mp_deinit()
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fflush(i32 %75)
  br label %14
}

declare dso_local i32 @get_sp(...) #1

declare dso_local i32 @uart_init(...) #1

declare dso_local i64 @heap_caps_get_largest_free_block(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @mp_stack_set_top(i8*) #1

declare dso_local i32 @mp_stack_set_limit(i64) #1

declare dso_local i32 @gc_init(i8*, i8*) #1

declare dso_local i32 @mp_init(...) #1

declare dso_local i32 @mp_obj_list_init(i32, i32) #1

declare dso_local i32 @mp_obj_list_append(i32, i32) #1

declare dso_local i32 @MP_OBJ_NEW_QSTR(i32) #1

declare dso_local i32 @readline_init0(...) #1

declare dso_local i32 @machine_pins_init(...) #1

declare dso_local i32 @pyexec_frozen_module(i8*) #1

declare dso_local i32 @pyexec_file_if_exists(i8*) #1

declare dso_local i32 @esp_log_set_vprintf(i32) #1

declare dso_local i64 @pyexec_raw_repl(...) #1

declare dso_local i64 @pyexec_friendly_repl(...) #1

declare dso_local i32 @machine_timer_deinit_all(...) #1

declare dso_local i32 @gc_sweep_all(...) #1

declare dso_local i32 @mp_hal_stdout_tx_str(i8*) #1

declare dso_local i32 @machine_pins_deinit(...) #1

declare dso_local i32 @usocket_events_deinit(...) #1

declare dso_local i32 @mp_deinit(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
