; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCB_CCR = common dso_local global i32 0, align 4
@LED_BUILTIN = common dso_local global i32 0, align 4
@OUTPUT = common dso_local global i32 0, align 4
@PYB_LED_BUILTIN = common dso_local global i32 0, align 4
@_heap_start = common dso_local global i32 0, align 4
@HEAP_END = common dso_local global i64 0, align 8
@mp_sys_path = common dso_local global i32 0, align 4
@MP_QSTR_ = common dso_local global i32 0, align 4
@mp_sys_argv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/boot.py\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@pyb_config_main = common dso_local global i64 0, align 8
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"main.py\00", align 1
@pyexec_mode_kind = common dso_local global i64 0, align 8
@PYEXEC_MODE_RAW_REPL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"MPY: soft reboot\0A\00", align 1
@MP_QSTR_LED = common dso_local global i32 0, align 4
@MP_QSTR_Servo = common dso_local global i32 0, align 4
@MP_QSTR_analogRead = common dso_local global i32 0, align 4
@MP_QSTR_analogWrite = common dso_local global i32 0, align 4
@MP_QSTR_analogWriteFrequency = common dso_local global i32 0, align 4
@MP_QSTR_analogWriteResolution = common dso_local global i32 0, align 4
@MP_QSTR_delay = common dso_local global i32 0, align 4
@MP_QSTR_gc = common dso_local global i32 0, align 4
@MP_QSTR_gpio = common dso_local global i32 0, align 4
@MP_QSTR_help = common dso_local global i32 0, align 4
@MP_QSTR_info = common dso_local global i32 0, align 4
@MP_QSTR_led = common dso_local global i32 0, align 4
@MP_QSTR_main = common dso_local global i32 0, align 4
@MP_QSTR_pyb = common dso_local global i32 0, align 4
@MP_QSTR_source_dir = common dso_local global i32 0, align 4
@SCB_CCR_STKALIGN = common dso_local global i32 0, align 4
@pyb_Servo = common dso_local global i32 0, align 4
@pyb_analog_read = common dso_local global i32 0, align 4
@pyb_analog_write = common dso_local global i32 0, align 4
@pyb_analog_write_frequency = common dso_local global i32 0, align 4
@pyb_analog_write_resolution = common dso_local global i32 0, align 4
@pyb_delay = common dso_local global i32 0, align 4
@pyb_gc = common dso_local global i32 0, align 4
@pyb_gpio_obj = common dso_local global i32 0, align 4
@pyb_help = common dso_local global i32 0, align 4
@pyb_info = common dso_local global i32 0, align 4
@pyb_led = common dso_local global i32 0, align 4
@pyb_led_type = common dso_local global i32 0, align 4
@pyb_main = common dso_local global i32 0, align 4
@pyb_source_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @SCB_CCR, align 4
  %4 = or i32 %3, 512
  store i32 %4, i32* @SCB_CCR, align 4
  %5 = call i32 (...) @mp_stack_ctrl_init()
  %6 = call i32 @mp_stack_set_limit(i32 10240)
  %7 = load i32, i32* @LED_BUILTIN, align 4
  %8 = load i32, i32* @OUTPUT, align 4
  %9 = call i32 @pinMode(i32 %7, i32 %8)
  %10 = call i32 (...) @led_init()
  br label %11

11:                                               ; preds = %74, %0
  %12 = load i32, i32* @PYB_LED_BUILTIN, align 4
  %13 = call i32 @led_state(i32 %12, i32 1)
  %14 = load i64, i64* @HEAP_END, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @gc_init(i32* @_heap_start, i8* %15)
  %17 = call i32 (...) @mp_init()
  %18 = load i32, i32* @mp_sys_path, align 4
  %19 = call i32 @mp_obj_list_init(i32 %18, i32 0)
  %20 = load i32, i32* @mp_sys_path, align 4
  %21 = load i32, i32* @MP_QSTR_, align 4
  %22 = call i32 @MP_OBJ_NEW_QSTR(i32 %21)
  %23 = call i32 @mp_obj_list_append(i32 %20, i32 %22)
  %24 = load i32, i32* @mp_sys_argv, align 4
  %25 = call i32 @mp_obj_list_init(i32 %24, i32 0)
  %26 = call i32 (...) @readline_init0()
  %27 = call i32 (...) @pin_init0()
  %28 = call i32 @pyexec_file_if_exists(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %11
  %31 = call i32 @flash_error(i32 4)
  br label %32

32:                                               ; preds = %30, %11
  %33 = load i32, i32* @PYB_LED_BUILTIN, align 4
  %34 = call i32 @led_state(i32 %33, i32 0)
  %35 = call i32* @vstr_new(i32 16)
  store i32* %35, i32** %2, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @vstr_add_str(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* @pyb_config_main, align 8
  %39 = load i64, i64* @MP_OBJ_NULL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @vstr_add_str(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %49

44:                                               ; preds = %32
  %45 = load i32*, i32** %2, align 8
  %46 = load i64, i64* @pyb_config_main, align 8
  %47 = call i8* @mp_obj_str_get_str(i64 %46)
  %48 = call i32 @vstr_add_str(i32* %45, i8* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32*, i32** %2, align 8
  %51 = call i8* @vstr_null_terminated_str(i32* %50)
  %52 = call i32 @pyexec_file_if_exists(i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 @flash_error(i32 3)
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @vstr_free(i32* %57)
  br label %59

59:                                               ; preds = %73, %56
  %60 = load i64, i64* @pyexec_mode_kind, align 8
  %61 = load i64, i64* @PYEXEC_MODE_RAW_REPL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = call i64 (...) @pyexec_raw_repl()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %74

67:                                               ; preds = %63
  br label %73

68:                                               ; preds = %59
  %69 = call i64 (...) @pyexec_friendly_repl()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %74

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %67
  br label %59

74:                                               ; preds = %71, %66
  %75 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %11
}

declare dso_local i32 @mp_stack_ctrl_init(...) #1

declare dso_local i32 @mp_stack_set_limit(i32) #1

declare dso_local i32 @pinMode(i32, i32) #1

declare dso_local i32 @led_init(...) #1

declare dso_local i32 @led_state(i32, i32) #1

declare dso_local i32 @gc_init(i32*, i8*) #1

declare dso_local i32 @mp_init(...) #1

declare dso_local i32 @mp_obj_list_init(i32, i32) #1

declare dso_local i32 @mp_obj_list_append(i32, i32) #1

declare dso_local i32 @MP_OBJ_NEW_QSTR(i32) #1

declare dso_local i32 @readline_init0(...) #1

declare dso_local i32 @pin_init0(...) #1

declare dso_local i32 @pyexec_file_if_exists(i8*) #1

declare dso_local i32 @flash_error(i32) #1

declare dso_local i32* @vstr_new(i32) #1

declare dso_local i32 @vstr_add_str(i32*, i8*) #1

declare dso_local i8* @mp_obj_str_get_str(i64) #1

declare dso_local i8* @vstr_null_terminated_str(i32*) #1

declare dso_local i32 @vstr_free(i32*) #1

declare dso_local i64 @pyexec_raw_repl(...) #1

declare dso_local i64 @pyexec_friendly_repl(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
